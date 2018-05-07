class LessonsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @lessons = policy_scope(Lesson)
  end

  def show
    @lesson = Lesson.find(params[:id])
    @teacher = @lesson.teacher

    @booking = Booking.new(user: current_user, lesson: @lesson)
    authorize @lesson
    # authorize @booking
  end

  def new
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
    params.require(:lesson).permit(:name, :price, :description, :teacher_id, :picture, :category)
  end
end
