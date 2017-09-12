import pytest

from transpyler.turtle.stategroup import StateGroup

@pytest.fixture
def state_group():
    trans = StateGroup()
    return trans

def test_init(state_group):
    assert isinstance(state_group, StateGroup)
    assert state_group._index == 0
    assert state_group._turtles == []    

def test_setitem(state_group):
    assert isinstance(state_group, StateGroup)
    
    try:
        state_group.__setitem__()
        assert False
    except TypeError:
        assert True
    