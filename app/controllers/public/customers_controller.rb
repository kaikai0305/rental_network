class Public::CustomersController < ApplicationController
   def show
    @customer = current_customer
   end

  def edit
    @customer = current_customer
  end

  def update
    @customer = current_customer
    if @customer.update(customer_params)
      redirect_to customers_path
    else
      render :edit
    end
  end

  def unsubscribe
  end

  def out
    @customer = current_customer
    @customer.update(is_removed: true)
    reset_session
    redirect_to root_path
  end

  private
  def customer_params
    params.require(:customer).permit(:email, :sur_name, :first_name, :sur_name_kana, :first_name_kana, :post_code, :address, :phone_number)
  end

end



