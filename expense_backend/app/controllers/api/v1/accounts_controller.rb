class Api::V1::AccountsController < ApplicationController

  def index

    render json: Account.all
  end

  def show
    render json: Account.find(params[:id])
  end

  def create
    @account = Account.new(a_params)
    if @account.save
      render json: @account
    else
      render json: {error: "Please try again"}
    end
  end

  def destroy
    @account = Account.find(params[:id])
    @account.destroy
  end


  private

  def a_params
    params.require(:account).permit(:name, :balance)
  end

end
