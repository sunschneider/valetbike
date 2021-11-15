class UserController < ApplicationController
  def show
  end

  def new
  end

  def create
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
