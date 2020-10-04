class UsersController < ApplicationController



  def create
    User.create(user_params)
    
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :encrypted_password, :password_confirmation).merge(user_id: current_user.id)
  end

end
