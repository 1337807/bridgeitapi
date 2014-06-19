class Api::V1::GuestsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index
    render json: {}
  end

  def show
  end

  def create
    render json: Guest.create(guest_params)
  end

  def update
  end

  def destroy
  end

  private

  def guest_params
    params.require(:guest).permit(:name, :email_address)
  end
end
