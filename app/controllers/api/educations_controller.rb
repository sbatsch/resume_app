class Api::EducationsController < ApplicationController


  def create
    @education = Education.new(
      student_id: Student.first.id, 
      start_date: params[:start_date],
      end_date: params[:end_date],
      university_name: params[:university_name],
      degree: params[:degree],
      details: params[:details])

    if @education.save
      render "show.json.jb"
    else
      render json: {errors: @education.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
  end

end
