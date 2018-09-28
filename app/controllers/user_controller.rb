class UserController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new(user_params)

  end

  def show
    @ user = User.find(params[:id])
  end


  private

  def user_params
    params.require(:user).permit(:username)
  end
end
