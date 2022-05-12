class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
  end

  def show
    @van = Van.find(params[:van_id])
    @reservation.van = @van
  end

  def new
    @van = Van.find(params[:van_id])
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @van = Van.find(params[:van_id])
    @reservation.van = @van
    @reservation.user_id = current_user.id
    if @reservation.save
      redirect_to reservations_path
    else
      render :new
    end
  end

  def edit
    @reservation = Reservation.find(params[:id])
  end

  def update
    @reservation = Reservation.find(params[:id])
    @reservation.update(reservation_params)
    redirect_to reservations_path
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to reservations_path
  end

  private

  def reservation_params
    params.require(:reservation).permit(:start_time, :end_time, :user_id, :van_id)
  end
end
