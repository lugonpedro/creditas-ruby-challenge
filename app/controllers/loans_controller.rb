class LoansController < ApplicationController
  def create
    @customer = Customer.find(params[:customer_id])
    @loan = @customer.loans.create(loan_params)
    redirect_to root_url
  end

  private
    def loan_params
      params.require(:loan).permit(:client, :loan_type, :taxes)
    end
end
