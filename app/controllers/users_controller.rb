class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    if user = User.create(user_params)
      login(user)
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
