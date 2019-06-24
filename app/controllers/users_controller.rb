class UsersController < ApplicationController
  # def index
  #
  # end

  def new
    @user = User.new
  end
<<<<<<< HEAD
  #
=======

  def show
    @user = User.find(params[:id])
    redirect_to new_user_path
  end


>>>>>>> ae960a8977ce40bf3b491e760d23f7a751bfb9e5
  def create
    # render plain: params[:user].inspect
    @user = User.new(user_params)

    @user.save
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
