class BookingsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  before_action :set_lesson, only: [:new, :create]
  before_action :set_user, only: [:new, :create, :show]

  def show
   # @booking = current_user.bookings.where(state: 'paid').find(params[:id])
   @booking = current_user.bookings.find(params[:id])
   authorize @booking
  end

  def new
    booking = Booking.new(lesson: @lesson, user: @user)
    authorize booking
    redirect_to new_booking_payment_path(booking)
  end

  def create
    booking  = Booking.create!(amount_cents: @lesson.price_cents, state: 'pending', user: @user, lesson_sku: @lesson.sku, lesson_id: @lesson.id)
    redirect_to new_lesson_booking_payment_path(@lesson, booking)
    authorize booking
  end

  private

  def valid_params
    params.require(:lesson).permit(:user_id, :lesson_id)
  end

  def set_lesson
    @lesson = Lesson.find(params[:lesson_id])
  end

  def set_user
    @user = User.find(current_user.id)
  end
end
