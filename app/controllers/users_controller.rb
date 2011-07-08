class UsersController < ApplicationController
  def new
    @user = User.new
	@title = "launch"
  end
  
  def create
    @user = User.new(params[:user])
	if @user.save
	  flash[:success] = "thanks. we'll keep you posted."
	  redirect_to thanks_path
	else
	  @title = "launch"
	  render 'new'
	end
  end

end
