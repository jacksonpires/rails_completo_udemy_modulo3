class Members::RegistrationsController < Devise::RegistrationsController

  before_filter :configure_permitted_parameters

  def new
    build_resource({})
    resource.build_profile_member
    respond_with self.resource
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(
        :sign_up,
        keys:[
          :email, :password, :password_confirmation,
          :profile_member_attributes => [:first_name, :second_name]
        ]
    )
  end

end
