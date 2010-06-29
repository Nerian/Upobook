class ApplicationController < ActionController::Base
  protect_from_forgery
  layout 'application'

  before_filter :authorize


  protected
  def authorize
    unless User.find_by_id(session[:user_id])
      redirect_to login_url, :notice => "Por favor, log in"
    end
  end



end
