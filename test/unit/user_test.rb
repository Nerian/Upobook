require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  test "User field should not be empty" do
    
    user = User.new

    assert user.invalid?
    assert user.errors[:name].any?
    assert user.errors[:password].any?
    assert user.errors[:mail].any?
  end


  test "mail field in User should be correct" do

    user = User.new(:name => "Godo", :password => "123")

    user.mail = "swfr"
    assert user.invalid?

  end
end
