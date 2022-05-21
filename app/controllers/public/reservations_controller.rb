class Public::ReservationsController < ApplicationController
   def index
     @reservations = current_customer.reservations
   end


  def new
    @reservation = Reservation.new
  end

  def check
    @reservation = Reservation.new(reservation_params)
  end



  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.customer_id = current_customer.id
      if @reservation.save
       redirect_to root_path
      else
       render :new
      end
  end

  def destroy
    reservation = Reservation.find(params[:id])
    reservation.destroy
    redirect_to '/'
  end



    private

  def reservation_params
    params.require(:reservation).permit( :group,  :room_id, :lending_id,:quantity,:reason, :start, :finish)
  end


end
