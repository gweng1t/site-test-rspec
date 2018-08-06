require 'test_helper'

class UserTest < ActiveSupport::TestCase

	test "should not save a blank name" do
		mon_user = User.new(first_name: "", last_name: "Diego", email: "diego@gmail.com")
		assert_not mon_user.save
	end

	test "should not save a space name" do
		mon_user = User.new(first_name: "     ", last_name: "Diego", email: "diego@gmail.com")
		assert_not mon_user.save
	end

	test "should not save a user with an email already in use" do
		mon_user = User.new(first_name: "Leo", last_name: "Diego", email: "diego@gmail.com")
		assert_not mon_user.save
	end

end
