import pytest
from src.main.area import calculate_area_square
import sys

sys.path.insert(0, '/src/main/')

def test_positive_integer():
    assert calculate_area_square(5) == 25

def test_positive_float():
    assert calculate_area_square(2.5) == 6.25

def test_negative_number():
    with pytest.raises(ValueError):
        calculate_area_square(-5)

def test_string_input():
    with pytest.raises(TypeError):
        calculate_area_square("5")

