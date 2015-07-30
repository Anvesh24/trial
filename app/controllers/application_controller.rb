class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
  stored_location_for(resource) 
    if resource.is_a?(User)
      stylos_path
    # elsif resource.is_a?(Collector)
    #   home_collector_path
    # elsif resource.is_a?(Caller)
    #   home_caller_path
    end
  end
end
