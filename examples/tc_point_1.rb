require_relative 'point'
require 'test/unit'

# Test Point class
class TestPoint < Test::Unit::TestCase
  def setup
    @origen = Point.new(0, 0)
    @unidad = Point.new(1, 1)
  end

  def test_simple
    assert_in_delta(1.0, @unidad.x, 0.001)
    assert_in_delta(1.0, @unidad.y, 0.001)
    assert_in_delta(0.0, @origen.x, 0.001)
    assert_in_delta(0.0, @origen.y, 0.001)
  end
end
