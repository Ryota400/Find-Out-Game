class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: [:index, :show, :search, :ps, :switch]
  add_flash_types :success, :info, :warning, :danger

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:zip, :address, :introduction])
  end
end
