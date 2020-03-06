class Api::ExperiencesController < ApplicationController

  def create
    @experience = Experience.new(
      student_id: Student.first.id,
      company_name: params[:company_name],
      start_date: params[:start_date],
      end_date: params[:end_date],
      job_title: params[:job_title],
      current: params[:current],
      details: params[:details]
      )

    if @experience.save
      render "show.json.jb"
    else
      render json: {errors: @experience.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @experience = Experience.find(params[:id])
    render 'show.json.jb'
  end

  def update 
    @experience = Experience.find(params[:id])

    @experience.company_name = params[:company_name] || @experience.company_name
    @experience.start_date = params[:start_date] || @experience.start_date
    @experience.end_date = params[:end_date] || @experience.end_date
    @experience.job_title = params[:job_title] || @experience.job_title
    @experience.current = params[:current] || @experience.current
    @experience.details = params[:details] || @experience.details

    if @experience.save
      render "show.json.jb"
    else
      render json: {errors: @experience.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    experience = Experience.find(params[:id])
    experience.delete
    render json: {messages: "Experience ID #{experience.id} successfully deleted."}
  end
end
