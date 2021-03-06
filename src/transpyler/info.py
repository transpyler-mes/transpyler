import json
import os
import tempfile
from contextlib import contextmanager

from transpyler.utils import full_class_name


class Info:
    """
    Introspect transpyler to infer useful information.

    All attributes can be accessed directly from the transpyler instance and
    if it is redefined there it takes precedence. However it is useful to keep
    all non-trivial inference logic in a separate place.
    """

    def __init__(self, transpyler):
        self.transpyler = transpyler

    def get_argv(self):
        """
        Return the list of arguments to be passed to initialize the kernel.
        """
        return [
            'python3', '-m', 'transpyler.jupyter.kernel',
            '-f', '{connection_file}',
            '--type', full_class_name(type(self.transpyler)),
        ]

    def get_pygments_lexer(self):
        return 'ipython3'

    def get_kernel_spec(self):
        """
        Return the kernel spec as a JSON-like data.
        """

        transpyler = self.transpyler
        _ = transpyler.translate
        return {
            'argv': self.get_argv(),
            'display_name': transpyler.display_name,
            'language': transpyler.name,
            'codemirror_mode': transpyler.codemirror_mode,
            'language_info': self.get_language_info(),
            'help_links': [
                {
                    'text': _('%s Documentation' % transpyler.display_name),
                    'link': transpyler.link_docs,
                },
                {
                    'text': 'Github',
                    'link': transpyler.link_github,
                }
            ]
        }

    def get_language_info(self):
        """
        Return basic language info as JSON-like data.
        """

        transpyler = self.transpyler
        return {
            'name': transpyler.display_name,
            'mimetype': transpyler.mimetype,
            'file_extension': transpyler.file_extension,
            'codemirror_mode': {
                'version': 3,
                'name': 'ipython'
            },
            'pygments_lexer': 'python',
        }

    def get_assets(self):
        """
        Register a list of all assets available for the given kernel.
        """

        basedir = os.path.dirname(__file__)
        assets_dir = os.path.join(basedir, 'jupyter', 'assets')
        filenames = os.listdir(assets_dir)
        return [os.path.join(assets_dir, name) for name in filenames]

    @contextmanager
    def prepare_assets(self):
        """
        Creates a temporary directory with all assets.
        """

        temp = tempfile.mkdtemp()
        try:
            for asset in self.get_assets():
                name = os.path.split(asset)[-1]
                with open(asset, 'rb') as input:
                    with open(os.path.join(temp, name), 'wb') as output:
                        output.write(input.read())
            with open(os.path.join(temp, 'kernel.json'), 'w') as F:
                dump = json.dumps(self.get_kernel_spec(), indent=2)
                F.write(dump)
            yield temp
        finally:
            for file in os.listdir(temp):
                os.unlink(os.path.join(temp, file))
            os.rmdir(temp)
