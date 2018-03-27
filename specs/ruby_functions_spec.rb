require( 'minitest/autorun' )
require_relative( '../ruby_functions_practice' )

class Functions_Practice < MiniTest::Test

  def test_return_10()
    return_10_result = return_10()
    assert_equal( 10, return_10_result )
  end

  def test_add()
    add_result = add( 1, 2 )
    assert_equal( 3, add_result )
  end

  def test_subtract()
    subtract_result = subtract( 10, 5 )
    assert_equal( 5, subtract_result )
  end

  def test_multiply()
    multiply_result = multiply( 4, 2 )
    assert_equal( 8, multiply_result )
  end

  def test_divide()
    divide_result = divide( 10, 2 )
    assert_equal( 5, divide_result )
  end

  def test_length_of_string()
    test_string = "A string of length 21"
    length_of_string = length_of_string( test_string )
    assert_equal( 21, length_of_string )
  end

  def test_join_string()
    string_1 = "Mary had a little lamb, "
    string_2 = "its fleece was white as snow"
    joined_string = join_string( string_1, string_2 )
    assert_equal( "Mary had a little lamb, its fleece was white as snow", joined_string )
  end

  def test_add_string_as_number()
    add_result = add_string_as_number( "1", "2" )
    assert_equal( 3, add_result )
  end

  def test_number_to_full_name()
    first_month_string = number_to_full_month_name( 1 )
    third_month_string = number_to_full_month_name( 3 )
    ninth_month_string = number_to_full_month_name( 9 )
    assert_equal( "January", first_month_string )
    assert_equal( "March", third_month_string )
    assert_equal( "September", ninth_month_string )
  end

  def test_substring()
    first_month_string = number_to_short_month_name( 1 )
    third_month_string = number_to_short_month_name( 3 )
    ninth_month_string = number_to_short_month_name( 9 )
    assert_equal( "Jan", first_month_string )
    assert_equal( "Mar", third_month_string )
    assert_equal( "Sep", ninth_month_string )
  end



  #Further

  #Given the length of a side of a cube calculate the volume
  def test_volume_of_cube()
    volume_of_cube_result = volume_of_cube(5)
    assert_equal(125, volume_of_cube_result)
    volume_of_cube_result = volume_of_cube(10)
    assert_equal(1000, volume_of_cube_result)
    volume_of_cube_result = volume_of_cube(50)
    assert_equal(125000, volume_of_cube_result)
  end

  #Given the radius of a sphere calculate the volume
  def test_volume_of_sphere()
    volume_of_a_sphere_result = volume_of_sphere(5)
    assert_equal(523.6, volume_of_a_sphere_result)
    volume_of_a_sphere_result = volume_of_sphere(10)
    assert_equal(4188.8, volume_of_a_sphere_result)
  end

  #Given a value in farenheit, convert this into celsius.
  def test_fahrenheit_to_celsius()
    #add test code here
    fahrenheit_to_celsius_result = fahrenheit_to_celsius(32)
    assert_equal(0 ,fahrenheit_to_celsius_result)
    fahrenheit_to_celsius_result = fahrenheit_to_celsius(57)
    assert_equal(13.89 ,fahrenheit_to_celsius_result)
    fahrenheit_to_celsius_result = fahrenheit_to_celsius(10)
    assert_equal(-12.22 ,fahrenheit_to_celsius_result)
    fahrenheit_to_celsius_result = fahrenheit_to_celsius(40)
    assert_equal(4.44 ,fahrenheit_to_celsius_result)
  end


end
