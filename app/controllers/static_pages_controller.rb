class StaticPagesController < ApplicationController
  def home
  	@tab_user = User.all
  end
end
