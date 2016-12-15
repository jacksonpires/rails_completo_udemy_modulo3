class Members::SessionsController < Devise::SessionsController
  protected
    def after_sign_in_path_for(resource)
      site_profile_dashboard_index_path
    end
end
