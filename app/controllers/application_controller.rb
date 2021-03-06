class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters 
  	devise_parameter_sanitizer.for(:sign_up) do |user_params| 
  		user_params.permit(:first_name, :last_name, :profile_name, :email, :password)
  	end 
  end
end
