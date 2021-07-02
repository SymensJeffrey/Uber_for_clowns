class BookingsController < ApplicationController

  before_action :authenticate_user
  def index
    if current_user
      bookings = Booking.where(user_id: current_user.id)
      render json: bookings.as_json
    end
  end

  def create

    if current_user
      booking = Booking.new(
        user_id:current_user.id,
        clown_id:params[:clown_id],
        date:params[:date],
        time:params[:time],
        price:params[:price]
      )
      if booking.save
        render json: booking.as_json
      else
        render json: {errors: booking.errors.full_messages}, status: :unprocessable_entity
      end
    else
      render json: [], status: :unauthorized
    end
  
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


