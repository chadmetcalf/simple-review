class ApplicationController < ActionController::Base
  # Devise Authentication
  before_action :authenticate_user!

  # Pundit Authorization
  include Pundit
  after_action :verify_authorized, except: :index, unless: :devise_controller?
  after_action :verify_policy_scoped, only: :index, unless: :devise_controller?
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def pundit_user
    return NullUser.new('guest') unless user_signed_in?
    current_user
  end

  def authentication_failure
    flash[:alert] = "Authentication Failed."
    redirect_to(request.referrer || root_path)
  end

  private

  def user_not_authorized(exception)
    raise exception if Rails.env.development?
    flash[:alert] = "You are not authorized to perform this action."
    redirect_to(request.referrer || root_path)
  end
end
