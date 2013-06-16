class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :digest_authenticate

  protected
  def current_path
    params[:path] || ""
  end
  helper_method :current_path

  private
  def digest_authenticate
    authenticate_or_request_with_http_digest do |username|
      if username == Settings.login_user
        Settings.login_password
      else
        false
      end
    end
  end
end
