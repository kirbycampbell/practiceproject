class UsersController < ApplicationController

  def index
    @users = User.all
  end


  def show
    @user = User.find(params[:id])
    @posts = @user.posts
  end


  def create
      @user = User.new(user_params)
      if @user.save
        redirect_to user_url(@user)
      else
        @users = User.all
        render :index
      end
  end


  private

  def user_params
    params.require(:user).permit(:username)
  end
end
