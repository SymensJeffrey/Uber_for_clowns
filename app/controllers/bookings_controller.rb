class BookingsController < ApplicationController

  before_action :authenticate_user
  def index
    if current_user
      bookings = Booking.where(user_id: current_user.id)
      render json: bookings.as_json
    end
  end
end


