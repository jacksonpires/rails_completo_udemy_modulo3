class Backoffice::CategoriesController < BackofficeController
  def index
    @categories = Category.all
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end
end
