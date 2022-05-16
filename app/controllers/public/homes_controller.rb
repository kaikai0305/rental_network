class Public::HomesController < ApplicationController
   def top
    @reservations = Reservation.page(params[:page]).per(20)
   end

  def about
  end
end
