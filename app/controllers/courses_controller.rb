class CoursesController < ApplicationController
  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      redirect_to root_url, notice: 'Course has been created'
    end
  end

private

  def course_params
    params.require(:course).permit(:title, :description, :privacy, :featured, :cover_image)
  end

end
