# Defining current_user, checking for logged_in status:

class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
    
  def no_repeats    
    session[:return_to] = request.referer
  end
    
  private

    helper_method :current_user, :logged_in?

    def current_user
      @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    end
    
    def logged_in?
      current_user.present?
    end
end
