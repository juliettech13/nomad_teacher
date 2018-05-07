class PaymentsController < ApplicationController
  before_action :set_booking

  def new
    @lesson = Lesson.find(params[:lesson_id])
  end

  def create
    # ...
  end

private

  def set_booking
    @booking = current_user.bookings.where(state: 'pending').find(params[:booking_id])
  end
end
