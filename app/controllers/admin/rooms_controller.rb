class Admin::RoomsController < ApplicationController
   def index
    @rooms = Room.all.page(params[:page])
   end

  def show
    @room = Room.find(params[:id])
  end

  def new
    @room_new = Room.new
  end

  def create
    @room_new = Room.new(product_params)
    @room_new.save
    redirect_to admin_room_path(@room_new)
  end

  def edit
    @room = Room.find(params[:id])
  end

  def update
    room = Room.find(params[:id])
    room.update(room_params)
    redirect_to admin_room_path(room.id)
  end

  private

  def room_params
    params.require(:room).permit( :name, :caption)
  end
end
