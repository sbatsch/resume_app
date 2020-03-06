class Api::SkillsController < ApplicationController
  def create
    @skill = Skill.new(
                       skill_name: params[:skill_name],
                       student_id: Student.first.id
                      )
    if @skill.save
      render 'show.json.jb'
    else
      render json: {errors: @skill.errors.full_messages}, status: :unprocessable_entity
    end
  end  


  def show
    @skill = Skill.find(params[:id])
    render 'show.json.jb'
  end 


  def update
    @skill = Skill.find(params[:id])
    @skill.skill_name = params[:skill_name] || @skill.skill_name

    @skill.save
    render 'show.json.jb'
  end 

  def destroy
    skill = Skill.find(params[:id])
    skill.destroy
    render json: {message: "The Skill is terminated"}
  end
end
