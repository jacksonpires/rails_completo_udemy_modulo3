class Site::Profile::AdsController < Site::ProfileController
  def index
    @ads = Ad.to_the(current_member)
  end
end
