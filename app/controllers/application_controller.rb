class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token
  
  protected
  def after_sign_in_path_for(resource)
    # return the path based on resource
    dashboard_path
  end
end
