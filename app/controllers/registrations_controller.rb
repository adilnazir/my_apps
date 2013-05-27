class RegistrationsController < Devise::RegistrationsController
  # The path used after sign up for inactive accounts. You need to overwrite
  # this method in your own RegistrationsController.
  def after_inactive_sign_up_path_for(resource)
    respond_to?(:new_user_registration) ? new_user_registration : "/users/sign_up"
  end

end
