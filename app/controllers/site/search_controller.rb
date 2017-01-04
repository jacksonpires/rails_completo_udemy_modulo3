class Site::SearchController < SiteController

  def ads
    @ads = Ad.search(params[:q], params[:page])
    @categories = Category.all
  end
end
