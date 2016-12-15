class Site::AdDetailController < SiteController

  def show
    @ad = Ad.find(params[:id])
  end
end
