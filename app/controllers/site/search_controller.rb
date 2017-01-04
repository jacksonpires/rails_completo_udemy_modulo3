class Site::SearchController < SiteController

  def ads
    @ads = Ad.where(title: params[:q])
    @categories = Category.all
  end
end
