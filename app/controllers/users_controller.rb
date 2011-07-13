class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
	@title = @user.name
  end
  
  def new
    @user = User.new
	@title = "bring everything to the table"
  end
  
  def create
    @user = User.new(params[:user])
	if @user.save
	  UserMailer.registration_confirmation(@user).deliver
	  UserMailer.registration_inform(@user).deliver
	  redirect_to thanks_path
	else
	  @title = "bring everything to the table"
	  render 'new'
	end
  end
  
  def index
    @title = "superobscureuserpage"
	@users = User.all
  end

end
