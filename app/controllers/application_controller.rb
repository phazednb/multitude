class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user

  rescue_from CanCan::AccessDenied do |exception|
    if controller_name == "task_subscriptions" && action_name == "create"
      session[:task_id] = @task.id
      redirect_to "#{ENV["ACCOUNTS_HOST"]}?redirect_url=#{root_url}"
    else
      redirect_to root_url, :alert => exception.message
    end
  end

  before_filter :check_precreate

  def current_user
    @current_user ||= User.find_by_id(session[:ssi_user_id])
  end

  def check_precreate
    if session[:task_id]
      redirect_to create_from_session_task_task_subscriptions_path(task_id: session.delete(:task_id))
    end
  end
end
