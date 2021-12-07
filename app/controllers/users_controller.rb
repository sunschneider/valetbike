class UsersController < ApplicationController
  def show
  end

  def new
    @user = User.new()
  end

  def create
    @user = User.new(params.require(:user).permit(:first_name, :last_name, :email, :password))

    @user.total_distance = rand(800..1000)
    @user.total_time = rand(1..30)
    @user.recent_distance = rand(25)
    @user.recent_time = rand(10)

    if @user.save
      session[:user_id] = @user.id
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

  def stats
    @user = current_user
  end


end
