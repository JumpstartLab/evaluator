class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :signed_in?
  helper_method :current_user

  before_filter :authentication_required

  rescue_from CanCan::AccessDenied do
    flash.notice = "You don't have permission for that, sorry."
    redirect_to root_path
  end

  rescue_from ActiveRecord::RecordNotFound do
    flash.notice = "Sorry, couldn't find what you were looking for."
    redirect_to root_path
  end

  def self.resource_attr(*resources)
    resources.each do |resource|
      class_eval do
        attr_accessor resource
        helper_method resource
        hide_action   resource
      end
    end
  end

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
