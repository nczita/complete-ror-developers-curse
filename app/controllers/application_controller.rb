class ApplicationController < ActionController::Base
  layout :layout_by_resource
  before_action :authenticate_user!

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
