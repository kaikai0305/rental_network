class Admin::ReservationsController < ApplicationController

  def index
     @reservations = Reservation.all
  end

  def show
    @reservation =  customer.reservations
  end


end
