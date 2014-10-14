require 'lib/point'
require 'test/unit'

# Test Point class
class TestPoint < Test::Unit::TestCase
  def setup
    @origen = Point.new(0, 0)
    @unidad = Point.new(1, 1)
  end

  def tear_down
    # nothing
  end

  def test_simple
    assert_in_delta(1.0, @unidad.x, 0.001)
    assert_in_delta(1.0, @unidad.y, 0.001)
    assert_in_delta(0.0, @origen.x, 0.001)
    assert_in_delta(0.0, @origen.y, 0.001)
    assert_equal(@unidad * 2, @unidad + @unidad)
  end

  def test_type_check
    assert_raise(TypeError) { Point.new('1', '1') }
  end

  #  def test_failure
  #    assert_equal("(5,5)", (@origen * 5).to_s, "Producto escalar")
  #  end
end
