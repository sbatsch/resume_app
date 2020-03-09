class Api::StudentsController < ApplicationController
  # before_action :authenticate_student, except: [:index, :show]

  def index
    @students = Student.all
    render 'index.json.jb'
  end

  def show
    @student = Student.find(params[:id])
    render 'show.json.jb'
  end


  def update
    @student = Student.find(params[:id])
    @student.first_name = params[:first_name] || @student.first_name
    @student.last_name = params[:last_name] || @student.last_name
    @student.email = params[:email] || @student.email
    @student.phone_number = params[:phone_number] || @student.phone_number
    @student.short_bio = params[:short_bio] || @student.short_bio
    @student.linkedin_url = params[:linkedin_url] || @student.linkedin_url
    @student.personal_website_url = params[:personal_website_url] || @student.personal_website_url
    @student.github_url = params[:github_url] || @student.github_url
    @student.city_state = params[:city_state] || @student.city_state
    # @student.password = params[:password] || @student.password


    if @student.save!
      render 'show.json.jb'
    else
      render json: { errors: @student.errors.full_messages }, status: :unprocessable_entity
    end 
  end
end

