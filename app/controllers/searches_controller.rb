class SearchesController < ApplicationController

  def search
    @range = params[:range]

    if @range == "Room"
      @rooms = Room.looks(params[:search], params[:word])
    else
      @lendings = Lending.looks(params[:search], params[:word])
    end
  end
end
