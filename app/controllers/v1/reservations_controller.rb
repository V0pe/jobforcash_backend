class V1::ReservationsController < ApplicationController
  before_action :authenticate_user!

  def index
    reservations = current_user.reservations

    render json: ReservationSerializer.new(reservations).serializable_hash[:data], status: :ok
  end

  def show
    reservation = Reservation.find_by(id: params[:id])

    if reservation.nil?
      render status: 404, json: { error: 'Reservation not found' }.to_json
    else
      render json: ReservationSerializer.new(reservation).serializable_hash[:data][:attributes], status: :ok
    end
  end

  def create
    reservation = Reservation.new(reservation_params)
    reservation.cost = reservation.laborer.price * reservation.number_days

    if reservation.save
      render json: reservation.to_json
    else
      render status: 500, json: { error: 'Reservation could not be created' }.to_json
    end
  end

  def destroy
    reservation = Reservation.find_by(id: params[:id])

    if reservation.nil?
      render status: 404, json: { error: 'Reservation not found' }.to_json
    else
      reservation.destroy
      render json: { message: 'Reservation deleted' }.to_json
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:user_id, :laborer_id, :start_date, :number_days)
  end
end
