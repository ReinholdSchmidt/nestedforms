class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    #raise params.inspect

    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user)      #user/#{user.id}


    else
      render 'new'
    end
  end
  
private

  def user_params
    params.require(:user).permit(:name, :email)
  end


end
