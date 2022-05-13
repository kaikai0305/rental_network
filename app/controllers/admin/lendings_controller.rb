class Admin::LendingsController < ApplicationController

  def index
    @lendings = Lending.all
  end

  def show
    @lending = Lending.find(params[:id])
  end

  def new
    @lending_new = Lending.new
  end

  def create
    @lending_new = Lending.new(lending_params)
    @lending_new.save
    redirect_to admin_lending_path(@lending_new)
  end

  def edit
    @lending = Lending.find(params[:id])
  end

  def update
    lending = Lending.find(params[:id])
    lending.update(lending_params)
    redirect_to admin_lending_path(lending.id)
  end

  private

  def lending_params
    params.require(:lending).permit(:name, :caption)
  end

end
