'''
Unit tests
'''
from src.code import main_function

def test_main_function_is_5():
    result = main_function()
    assert (result==5)

def test_main_function_is_4():
    result = main_function()
    assert (result==4)