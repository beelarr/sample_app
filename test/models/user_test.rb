require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: "Bryon Larrance", email: "bryonl@me.com")
  end
  test "should be vaild" do
    assert @user.valid?
  end
  test "name should be present" do
    @user.name = "    "
    assert_not @user.valid?
  end
  test "email should be present" do
    @user.email = "    "
    assert_not @user.valid?
  end
  test "name should not be too long" do
    @user.name = "a" * 51
    assert_not @user.valid?
  end
  test "email should not be too long" do
    @user.email = "a" * 244 + "@esample.com"
    assert_not @user.valid?
  end
end