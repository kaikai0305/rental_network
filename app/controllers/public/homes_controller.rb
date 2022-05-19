class Public::HomesController < ApplicationController
   def top
    @reservations = Reservation.all
   end

  def about
  end
end
