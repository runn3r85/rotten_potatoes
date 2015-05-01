class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  add_flash_types :success, :danger
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << [:username, :first_name, :last_name]
    devise_parameter_sanitizer.for(:account_update) << :avatar
  end
end
