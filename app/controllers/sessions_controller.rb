class SessionsController < ApplicationController
  def home
    if logged_in? 
  # Links for logged-in users
      redirect_to(stations_path)
    end
  end
   
   def login
  end

  def create
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
       log_in(@user)
       redirect_to (stations_path)
    else
       flash.now[:danger] = 'Invalid email/password combination'
       render('login')
    end
 end

 def destroy
   log_out()
   redirect_to(root_path)
 end
  
end
