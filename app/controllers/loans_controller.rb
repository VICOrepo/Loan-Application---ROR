class LoansController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def show

  end
  
  def index
    @loans = Loan.all
  end
  def new
    @loan = Loan.new
  end

  def edit
    
  end

  
  def create
    @loan = Loan.new(loan_params)
   
    if @loan.save
      flash[:notice] = "Loan was created successfully."
      redirect_to @loan
    else
      # Redirect to the new action to display the form with errors
      redirect_to new_loan_path, alert: @loan.errors.full_messages.join(', ')
    end
  end
  
  def update
    
    if @loan.update(loan_params)
    flash[:notice] = "User was updated successfully."
    redirect_to @loan
    else
        redirect_to edit_loan_path, alert: @loan.errors.full_messages.join(', ')
     end
end

   def destroy
    @loan = Loan.find(params[:id])
     @loan.destroy 
     redirect_to loans_path
   end


  private

  def set_user
    @loan = Loan.find(params[:id])
  end

  def loan_params
    params.require(:loan).permit(:name, :email, :amount, :purpose, :ssn, :phone_number, :address, :income, :profession)
  end
end
