require "minitest/autorun"

class TestGoVersion < Minitest::Test
  def test_valid_version
    assert_equal true, GoVersion.valid?("1.2.3")
  end

  def test_invalid_version
    assert_equal false, GoVersion.valid?("foo")
  end

  def test_compare_version
    assert_equal 1, GoVersion.compare("1.2.3", "1.2.2")
    assert_equal (-1), GoVersion.compare("1.2.2", "1.2.3")
    assert_equal 0, GoVersion.compare("1.1.1", "1.1.1")
  end

  def test_valid_strict
    assert_equal false, GoVersion.valid_strict?("foo")
    assert_equal true, GoVersion.valid_strict?("1.1.1")
  end
end
