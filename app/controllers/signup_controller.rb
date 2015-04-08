class SignupController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      SignupJob.perform_later(@user.id)
      render text: "Created!"
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :role, :email, :password, :password_confirmation)
  end
  
end