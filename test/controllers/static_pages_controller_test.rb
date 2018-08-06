require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
	
	test "login and check links" do
		get "/login"
		assert_response :success

		fill_in 'email', with: 'diego@gmail.com'
		fill_in 'secret_pass', with: 'test'
		click_on 'submit'

	end



  # test "should display link about secret page if user is connected" do
  #   get "/"

  #   mon_user = User.create(first_name: "Diego", last_name: "Riveira", email: "diego@æmail.com")
  #   if mon_user.logged_in?
  #   	puts "-"*50
  #   	assert_select "a", text= "Se connecter"
  #   else
  #   	assert_select "a", text= "LOG OUT"
  #   end
  # end

end
