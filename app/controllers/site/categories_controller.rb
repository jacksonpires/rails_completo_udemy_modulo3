class Site::CategoriesController < SiteController

  def show
    @categories = Category.order_by_description
    @ads = Ad.where_category(params[:id])
  end
end
