class Site::AdDetailController < SiteController

  def show
    @categories = Category.order_by_description
    @ad = Ad.find(params[:id])
  end
end
