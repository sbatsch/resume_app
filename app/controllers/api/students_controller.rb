class Api::StudentsController < ApplicationController
  def index
    @students = Student.all
    render 'index.json.jb'
  end

  def show
    @student = Student.find(params[:id])
    render 'show.json.jb'
  end

  # def create
  #   @student = Student.new(first_name: params[:first_name],
  #                          last_name: params[:last_name],
  #                          email: params[:email],
  #                          phone_number: params[:phone_number],
  #                          short_bio: params[:short_bio],
  #                          linkedin_url: params[:linkedin_url],
  #                          personal_website_url: params[:personal_website_url],
  #                          github_url: params[:github_url],
  #                          city_state: params[:city_state],
  #                          password: params[:password],
  #                          password_confirmation: params[:password_confirmation]
  #                         )
  #   if @student.save
  #     render 'show.json.jb'
  #   else
  #     render json: {errors: @student.errors.full_messages}, status: :unprocessable_entity
  #   end 
  # end 
end

