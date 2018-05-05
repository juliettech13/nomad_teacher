class BookingsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :destroy]

  def index
  end

  def show
  end

  def new
    @lesson = Lesson.find(params[:lesson_id])
    @booking = Booking.new(lesson: @lesson, user: current_user)
    authorize @booking
  end

  def create
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
end
