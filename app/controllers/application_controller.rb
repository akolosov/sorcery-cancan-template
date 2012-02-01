class ApplicationController < ActionController::Base
  protect_from_forgery

  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = exception.message
    redirect_to root_url
  end

  before_filter :require_login, :except => [:not_authenticated]

  helper_method :current_users_list

  protected

  def not_authenticated
    redirect_to root_path, :alert => "Please login first."
  end

  def current_users_list
    current_users.map {|u| u.email+" ("+u.roles+")"}.join(", ")
  end

end
