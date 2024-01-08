class LoansController < ApplicationController

  def new
    @loan = Loan.new
  end

  def create
    @loan = Loan.new(loan_params)
    if @loan.save
      redirect_to root_path, notice: 'Loan application was successfully submitted.'
    else
      redirect_to new_loan_path, alert: @loan.errors.full_messages.join(', ')
    end
  end

  private

  def loan_params
    params.require(:loan).permit(:name, :email, :amount, :purpose, :ssn, :phone_number, :address, :income, :profession)
  end
end
