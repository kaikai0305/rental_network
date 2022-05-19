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
      if @reservation.save
       redirect_to reservations_check_path
      else
       render :new
      end
  end

    private

  def reservation_params
    params.require(:reservation).permit( :group, :customer_name, :room_name, :lending_name,:reason, :start, :finish)
  end


end
