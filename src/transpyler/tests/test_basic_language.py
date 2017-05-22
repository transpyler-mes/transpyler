#
# Test common transpyler examples for python transpyler
#
import pytest


def test_language_transpile_code(python):
    src = 'print("hello world")'
    assert python.transpile(src) == src


def test_language_eval_code(python):
    assert python.eval('1 + 1', {}) == 2


def test_language_exec_code(python):
    D = {}
    python.exec('x = 42', D)
    assert D['x'] == 42


#
# Test common transpyler constructs for PyBr transpyler
#
def test_pybr_eval(pybr):
    assert pybr.eval('1 em (1, 2)', {}) is True


def test_pybr_code_transpile(pybr, pybr_code):
    assert pybr.transpile(pybr_code) == (
        '\n'
        'x, y = 1, 1\n'
        'for i in [1, 2, 3, 4, 5] :\n'
        '    x, y = y, x + y\n'
    )


def test_pybr_code(pybr, pybr_code):
    D = {}
    pybr.exec(pybr_code, D)
    assert D['x'] == 8
    assert D['y'] == 13


def test_pybr_namespace(pybr):
    ns = pybr.make_global_namespace()
    assert 'cos' in ns
    assert 'mostre' in ns


def test_pybr_exec_with_builtins(pybr):
    assert pybr.eval('cos(0)', {}) == 1


#
# Tests error code paths for PyBr
#
def test_empty_code_string(pybr):
    assert pybr.transpile('') == ''


def test_invalid_keywords_tokens(pybr):
    with pytest.raises(SyntaxError):
        pybr.exec('retornar 1', {})
