class UsersController < ApplicationController

  before_action:authorize, only: [:show]
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
  def new
    @user = User.new
  end
end
private
def user_params
  params.require(:user).permit(:username, :password, :password_confirmation)
end
