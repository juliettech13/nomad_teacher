class BookingsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :destroy]
  before_action :set_lesson, only: [:new, :create]
  before_action :set_user, only: [:new, :create, :show]

  def index
  end

  def show
    booking = Booking.find(params[:id])
    authorize booking
  end

  def new
    booking = Booking.new(lesson: @lesson, user: @user)
    authorize booking
    redirect_to lesson_bookings_path(booking)
  end

  def create
    booking  = Booking.create!(amount_cents: @lesson.price_cents, state: 'pending', user: @user, lesson_sku: @lesson.sku, lesson_id: @lesson.id)
    redirect_to lesson_booking_path(@lesson, booking)
    authorize booking
  end

  def edit
  end

  def update
  end

  def destroy
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
