class ApplicationController < ActionController::Base

    protected

  def after_sign_in_path_for(resource)
    businesses_path
    # return the path based on resource
  end

  def after_sign_out_path_for(resource)
    root_path
  end


end
