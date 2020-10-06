class MentorsController < ApplicationController

  

  def index
    @mentors = Mentor.all
  end
  
  def new
    @mentor = Mentor.new
  end

  def create
    # @mentor = Mentor.new(mentor_params)
    # if @mentor.save
    #   redirect_to root_path
    # else
    #   render :new
    # end
  end

  private

  def user_params
    params.require(:mentor).permit(:name, :email, :encrypted_password, :career, :skill_id).merge(user_id: current_user.id)

  end
end
