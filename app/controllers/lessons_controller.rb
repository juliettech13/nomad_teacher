class LessonsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_lesson, only: [:show, :edit]

  def index
    @lessons = policy_scope(Lesson)
  end

  def show
    @teacher = @lesson.teacher
    @booking = Booking.new(user: current_user, lesson: @lesson)
  end

  def edit
  end

  private

  def set_lesson
    @lesson = Lesson.find(params[:id])
    authorize @lesson
  end

  def valid_params
    params.require(:lesson).permit(:name, :price, :description, :teacher_id, :picture, :category)
  end
end
