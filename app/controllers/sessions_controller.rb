class SessionsController < ApplicationController

  def create
    @user = User.find_by(username: params[:username])
    if request.xhr?
      if @user&.password == params[:password]
        session[:user_id] = @user.id
      end
      "Welcome RedBull - you are now logged in!"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect '/'
  end

end