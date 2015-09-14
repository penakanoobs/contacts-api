class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      render json: {message: 'User created successfully'}
    end
  end

  def user_params
    params.require(:user).permit :name, :email, :password
  end

end
