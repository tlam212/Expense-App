class Api::V1::TransactionsController < ApplicationController

  before_action :find_account

  def index
    render json: @account.transactions
  end

  def show
    render json: @account.transactions.find_by(:id params[:id])
  end

  def create
    @transaction = @account.transactions.new(t_params)
    if @account.update_balance(@tranaction) != "Your balance is low"
      @transaction.save
      render json: @transaction
    else
      render json: {error: "Please try again"}
  end
end



  private

  def find_account
    @account =  Account.find(params[:account_id])
  end

  def t_params
    params.require(:transaction).permit(:account_id, :trans_type, :description, :amount, :date)
  end
end
