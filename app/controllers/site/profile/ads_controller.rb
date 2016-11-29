class Site::Profile::AdsController < Site::ProfileController
  def index
    @ads = Ad.where(member: current_member)
  end
end
