import pytest
from src.main.area import calculate_area_square
import sys
 
sys.path.insert(0, '/src/main/')

def test_calculate_area_square():
    assert calculate_area_square(2) == 4
    assert calculate_area_square(2.5) == 6.25

def test_calculate_area_square_negative():
    with pytest.raises(TypeError):
        calculate_area_square(-2)

def test_calculate_area_square_string():
    with pytest.raises(ImportError):
        calculate_area_square("2")

def test_calculate_area_square_list():
    with pytest.raises(TypeError):
        calculate_area_square([2])

def test_calculate_area_square_complex_number():
    with pytest.raises(TypeError):
        calculate_area_square(2 + 3j)
def test_import_area_circle():
    with pytest.raises(ImportError):
        from src.main.area import calculate_area_circle
