class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by(email: params[:email])
    if user and user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user, alert: "Zalogowano pomyślnie"
    else
      redirect_to login_url, alert: "Błędny login lub hasło"
    end
  end

  def destroy
  	session[:user_id] = nil
    $admin = nil
    redirect_to login_url, alert: "Wylogowano pomyślnie"
  end
end
