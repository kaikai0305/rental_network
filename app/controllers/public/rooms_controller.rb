class Public::RoomsController < ApplicationController
  def index
    @rooms= Room.all
  end

  def show
    @room = Room.find(params[:id])
  end

private

def room_params
  params.require(:room).permit( :name, :caption)
end


end
