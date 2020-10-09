class UsersController < ApplicationController

  def index
    @users = User.all
  end
  
  def new
    @user = User.new
  end


  def create
    User.create(user_params)
    
  end

  def show
    @name = current_user.name
    @users = current_user.users
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    if @user.update(user_params)
      redirect_to root_path(@user) 
    else
      render root_path
    end
  end

  def destroy
    if current_user.id == @user.user_id
       if @user.destroy
          redirect_to root_path
       else
         render :show
       end
    else
      redirect_to root_path
    end
  end

  


  private

  def user_params
    params.require(:user).permit(:name, :email, :password).merge(user_id: current_user.id)
  end

end
