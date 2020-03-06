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

  def update
    @education = Education.find(params[:id])

    @education.university_name = params[:university_name] || @education.university_name
    @education.start_date = params[:start_date] || @education.start_date
    @education.end_date = params[:end_date] || @education.end_date
    @education.degree = params[:degree] || @education.degree
    @education.details = params[:details] || @education.details

    if @education.save
      render "show.json.jb"
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @education = Education.find(params[:id])
    render 'show.json.jb'
  end

  def destroy
    education = Education.find(params[:id])
    education.delete
    render json: {message: "Education #{education.id} successfully deleted."}
  end

end
