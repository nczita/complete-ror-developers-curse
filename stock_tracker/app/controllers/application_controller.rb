class ApplicationController < ActionController::Base
  layout :layout_by_resource
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name])
  end

  private

  # https://github.com/heartcombo/devise/wiki/How-To:-Create-custom-layouts
  def layout_by_resource
    if devise_controller?
      'devise'
    else
      'application'
    end
  end
end
