require "minitest/autorun"
require "./bad_advice"


class TestAdvice < Minitest::Test
  def test_option_class
    bad_user = Minitest::Mock.new
    bad_user.expect(:initialize, true, ["James", "Wrong Input"])
    bad_user.initialize("James", "Wrong Input")
    bad_user.verify
  end
end
