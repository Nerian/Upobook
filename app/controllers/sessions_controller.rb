class SessionsController < ApplicationController

  skip_before_filter :authorize

  def new
  end

  def create
    if user = User.authenticate(params[:mail],params[:password])
      session[:user_id] = user.id
      redirect_to chat_index_url
    else
      redirect_to login_url, :alert => "Correo o clave incorrecta"
    end
  end

  def destroy
    User.find(session[:user_id]).channel_users.destroy_all
    session[:user_id] = nil
    session[:channel] = nil
    redirect_to chat_index_url, :notice => "Logged out"
  end

end
