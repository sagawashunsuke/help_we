class MentorsController < ApplicationController
  before_action :authenticate_user!, only:[:new, :create, :edit, :update, :destroy]
  

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
    Mentor.create(mentor_params)
    redirect_to new_mentor_path
  end


  def show
    # @mentor = Mentor.find(params[:id])

  end

  def edit
    @mentor = Mentor.find(params[:id])
  end

  def update
    if @mentor.update(mentor_params)
      redirect_to root_path(@mentor) 
    else
      render root_path
    end
  end

  def destroy
    if current_user.id == @mentor.user_id
       if @mentor.destroy
          redirect_to root_path
       else
         render :show
       end
    else
      redirect_to root_path
    end
  end


  private

  def mentor_params
    params.require(:mentor).permit(:name, :email, :career, :profile, :skill_id, :image)
  end
end
