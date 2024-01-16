class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def edit
        @user = User.find(params[:id])
      end
    
      def update
        @user = User.find(params[:id])
        if @user.update(user_params)
          flash[:notice] = "Your account information was successfully updated"
          redirect_to new_loan_path
        else
           redirect_to edit_user_path, alert: @user.errors.full_messages.join(", ")    
        end
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
