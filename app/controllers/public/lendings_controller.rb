class Public::LendingsController < ApplicationController
  def index
    @lendings = current_customer.reservations
  end

  def show
    @lending = Lending.find(params[:id])
  end

private

  def lending_params
    params.require(:lending).permit( :name,:quantity, :caption)
  end
end
