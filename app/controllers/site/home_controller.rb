class Site::HomeController < SiteController
  def index
    HardWorker.perform_async("Jackson Pires")
    @categories = Category.order_by_description
    @ads = Ad.descending_order(params[:page])
    @carousel = Ad.random(3)
  end
end
