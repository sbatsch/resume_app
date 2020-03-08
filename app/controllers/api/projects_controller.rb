class Api::ProjectsController < ApplicationController
  before_action :authenticate_student, except: [:index, :show]
  
  def create
    @project = Project.new(
                           name: params[:name],
                           description: params[:description],
                           url: params[:url],
                           student_id: Student.first.id
                          )
    if @project.save
      render 'show.json.jb'
    else
      render json: {errors: @project.errors.full_messages}, status: :unprocessable_entity
    end 
  end

  def show
    @project = Project.find(params[:id])
    render 'show.json.jb'
  end 

  def update
    @project = Project.find(params[:id])

    @project.name = params[:name] || @project.name
    @project.description = params[:description] || @project.description
    @project.url = params[:url] || @project.url
  
    @project.save
    render 'show.json.jb'
  end 

  def destroy
    project = Project.find(params[:id])
    project.destroy
    render json: {message: "The Project is terminated"}
  end
end
