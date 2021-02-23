class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :verify_user_steps!

  rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
      format.json { head :forbidden }
      format.html { redirect_to main_app.root_url, :alert => exception.message }
    end
  end



  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:fullname])
  end

  # # def after_sign_in_path_for(resource)
  # #  if current_user.businesses.count < 1
  # #     new_business_path
  # #  else
  # #   businesses_path
  # #  end
  #   # return the path based on resource
  # # end

  # # def after_sign_out_path_for(resource)
  # #   root_path
  # # end

  def verify_user_steps!
    return if devise_controller?
    return unless user_signed_in?
    return if current_user.terms
    redirect_to after_signup_path(:terms),notice: 'You most accept Terms and conditions.'
  end
   

  

end
