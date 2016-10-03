class Backoffice::CategoriesController < BackofficeController
  def index
    @categories = Category.all
  end
end
