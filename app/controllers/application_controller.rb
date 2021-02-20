class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :verify_user_steps!


  protected

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
   

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:fullname])
  end

end
