class ReservationsController < ApplicationController

  def index
    @reservations = Reservation.all
  end

  def new
    @reservation = Reservation.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reservation.restaurant_id = @restaurant.id
    if @reservation.save
      redirect_to restaurant_reservation_path(@restaurant, @reservation)
    else
      render new
    end
  end

  private
  def reservation_params
    params.require(:reservation).permit(:guest, :name, :date, :email)
  end

end
