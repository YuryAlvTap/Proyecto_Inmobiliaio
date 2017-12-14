class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #check_authorization # el load_and_authorize_resource debe estar en los controller
  rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
      format.html { redirect_to propiedads_path, alert: exception.message }
    end
  end
end
