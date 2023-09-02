def calculate_area_square(length: int | float) -> int | float:
    """
    Function to calculate the area of a square.
    
    :param length: The length of the square.
    :type length: int or float
    :raises TypeError: If length is not a positive non-zero number.
    :return: The area of the square.
    :rtype: int or float
    """
    if not isinstance(length, (int, float)):
        raise TypeError("Length must be a number")
    if length <= 0:
        raise ValueError("Length must be a positive non-zero number")
    
    # Calculate and return the area of the square
    return length * length

# Test cases
try:
    # Valid input
    area = calculate_area_square(5)
    print(f"Area of the square: {area}")
except Exception as e:
    print(f"Error: {e}")

try:
    # Invalid input (string)
    area = calculate_area_square("5")
    print(f"Area of the square: {area}")
except Exception as e:
    print(f"Error: {e}")

try:
    # Invalid input (negative number)
    area = calculate_area_square(-5)
    print(f"Area of the square: {area}")
except Exception as e:
    print(f"Error: {e}")
