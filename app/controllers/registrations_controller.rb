class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
  	#@profile = Profile.new(profile_params)
  	#edit_profiles_path
    new_profile_path
  end
end