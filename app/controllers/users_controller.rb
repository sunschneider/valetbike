class UsersController < ApplicationController
  def show
  end

  def new
    @user = User.new
  end
  
  def create
    @user = User.create(params.require(:user).permit(:first_name))
    session[:user_id] = @user.id
  end

  def edit
  end
  
  def update
  end

  def delete
  end
  
  def destroy
  end
  
  def index
  @user = User.all.order(identifier: :asc)
  end
  
end
