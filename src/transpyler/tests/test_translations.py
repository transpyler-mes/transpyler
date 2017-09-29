import pytest

from transpyler.translate import extract_translations, \
    extract_translation


class TestExtractTranslations:
    @pytest.fixture
    def func(self):
        def f(x, y=0):
            """
            Test function.
            """
            return x + y

        return f

    @pytest.fixture
    def cls(self):
        class Foo:
            "docstring"

            def f(self, x):
                "method docstring"
                return x

        return Foo

    def test_extract_translation_from_func(self, func):
        trans = extract_translation(func)
        assert trans == {'args': 'x, y', 'doc': 'Test function.', 'name': 'f'}

    def test_extract_translation_from_class(self, cls):
        trans = extract_translation(cls)
        assert trans == {
            'name': 'Foo', 'doc': 'docstring',
            ':f.name': 'f', ':f.args': 'self, x', ':f.doc': 'method docstring',
        }

    def test_extract_translations_from_namespace(self, func, cls):
        trans = extract_translations({
            'f': func,
            'Foo': cls,
            'TRANSLATIONS': {'foobar': 'barfoo'}
        })

        assert trans == {
            'Foo.name': 'Foo', 'Foo.doc': 'docstring',
            'Foo:f.name': 'f', 'Foo:f.args': 'self, x',
            'Foo:f.doc': 'method docstring',
            'f.args': 'x, y', 'f.doc': 'Test function.', 'f.name': 'f',
            'foobar': 'barfoo',
        }
