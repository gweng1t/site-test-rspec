class UsersController < ApplicationController
  def new
  end

  def create
  	puts "-"*50
  	mon_user = User.new(first_name: params[:first_name], last_name: params[:last_name], email: params[:email])
  	if mon_user.save
  		puts "Mon user à été Enregister"
  		redirect_to root_path
  	else
  		puts "Mon user a un soucis :("
  	end
  end

end
