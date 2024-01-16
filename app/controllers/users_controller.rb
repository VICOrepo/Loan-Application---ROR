class UsersController < ApplicationController

    def new
        @user = User.new
    end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Welcome to the LendFoundry #{@user.username}, you have successfully signed up"
      redirect_to new_loan_path
    else
      redirect_to signup_path, alert: @user.errors.full_messages.join(", ")    
    end
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
