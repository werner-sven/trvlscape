class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    if session[:last_booking_id]
      booking_path(session[:last_booking_id])
    else
      root_path
    end
  end

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:phone])
  end

  def default_url_options
  { host: ENV["HOST"] || "localhost:3000" }
  end
end
