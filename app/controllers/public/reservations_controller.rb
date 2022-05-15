class Public::ReservationsController < ApplicationController
   def index
     @reservations = current_customer.reservations
   end

  def show
    @reservation = Reservation.find(params[:id])
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
       redirect_to reservations_thanx_path
      else
       render :new
      end
  end

    private

  def reservation_params
    params.require(:reservation).permit(:customer_id, :room_id, :lending_id,:quantity, :start, :finish, reservation_lendings_attributes: [:id, :title, :_destroy])
  end
end
