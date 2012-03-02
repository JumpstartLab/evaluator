class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :signed_in?
  helper_method :current_user

  before_filter :authentication_required

  private

  def current_user
    begin
      @current_user ||= Person.find(session[:user_id]) if session[:user_id]
    rescue ActiveRecord::RecordNotFound
      nil
    end
  end

  def signed_in?
    current_user.present?
  end

  def authentication_required
    unless signed_in?
      redirect_to signin_path
    end
  end
end
