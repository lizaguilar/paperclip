class UsersController < ApplicationController
  def index
    @user = User.new
    @users = User.all.reverse
  end

  def create
    @user = User.create(user_params)

    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:username, :avatar)
  end
end