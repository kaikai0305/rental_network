class Public::ReservationsController < ApplicationController
   def index
     @reservations = current_customer.reservations
   end

  def show
    @reservation = Reservation.find(params[:id])
    @reservation_details = @reservation.reservation_details
  end

  def thanx
  end

    private

  def reservation_params
    params.require(:reservation).permit(:customer_id, :room_id, :lending_id, :start, :finish)
  end
end
