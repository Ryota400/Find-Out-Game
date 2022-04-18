class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: [:index, :switch, :show]
  add_flash_types :success, :info, :warning, :danger

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:zip, :address, :introduction])
  end
end
