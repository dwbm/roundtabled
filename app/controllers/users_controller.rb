class UsersController < ApplicationController
  def new
    @user = User.new
	@title = "bring everything to the table"
  end
  
  def create
    @user = User.new(params[:user])
	if @user.save
	  redirect_to thanks_path
	else
	  @title = "bring everything to the table"
	  render 'new'
	end
  end

end
