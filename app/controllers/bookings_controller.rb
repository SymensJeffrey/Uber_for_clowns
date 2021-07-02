class BookingsController < ApplicationController

  before_action :authenticate_user
  def index
    if current_user
      bookings = Booking.where(user_id: current_user.id)
      render json: bookings.as_json
    end
  end

  def create
    render json: {message: "hello"}
  end
  

  # if current_user
  #   order= Order.new(
  #     user_id:current_user.id,
  #     product_id:params[:product_id],
  #     quantity:params[:quantity],
  #     subtotal:calculated_subtotal,
  #     tax:calculated_tax,
  #     total:calculated_total,
  #   )
  #   if order.save
  #     render json: order
  #   else
  #     render json: {errors: order.errors.full_messages}, status: :unprocessable_entity
  #   end
  # else
  #   render json: [], status: :unauthorized
  # end

end


