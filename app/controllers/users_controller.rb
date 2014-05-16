class UsersController < ApplicationController
  def index
    @users = User.all
  end
  def show
    @user = User.find(params[:id])
    @user_articles = User.find(params[:id]).articles
  end
  def create
    new_user = User.create(user_params)
    redirect_to "/users/#{new_user.id}"
  end
end

def user_params
  params.require(:user).permit(:username)
end
