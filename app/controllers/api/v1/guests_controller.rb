class Api::V1::GuestsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index
    render json: Guest.all
  end

  def show
    render json: Guest.find(params[:id])
  end

  def create
    render json: Guest.create(guest_params)
  end

  def update
    render json: Guest.update(params[:id], guest_params)
  end

  def destroy
    render json: Guest.destroy(params[:id])
  end

  private

  def guest_params
    params.require(:guest).permit(:name, :email_address)
  end
end
