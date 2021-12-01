class UsersController < ApplicationController
  def show
  end

  def new
    @user = User.new
  end
  
  def create

    @user = User.new(params.require(:user).permit(:first_name, :last_name, :email, :password))
    session[:user_id] = @user.id
    if @user.save
      redirect_to(stations_path)
    else
      render('new')
    end
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
