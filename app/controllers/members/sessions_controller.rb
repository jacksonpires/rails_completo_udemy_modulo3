class Members::SessionsController < Devise::SessionsController
  protected
    def after_sign_in_path_for(resource)
      stored_location = stored_location_for(resource)

      if stored_location.match(site_ad_detail_index_path)
        stored_location
      else
        site_profile_dashboard_index_path
      end
    end
end
