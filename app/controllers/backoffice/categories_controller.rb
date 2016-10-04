class Backoffice::CategoriesController < BackofficeController
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(params_category)
    if @category.save
      redirect_to backoffice_categories_path, notice: "A categoria (#{@category.description}) foi cadastrada com sucesso!"
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  private

  def params_category
    params.require(:category).permit(:description)
  end
end
