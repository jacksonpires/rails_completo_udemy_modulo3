class Backoffice::CategoriesController < BackofficeController
  before_action :set_category, only: [:edit, :update]

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = CategoryService.create(params_category)

    unless @category.errors.any?
      redirect_to backoffice_categories_path, notice: I18n.t('messages.created_with', item: @category.description)
    else
      render :new
    end
  end

  def edit
    # Uses before_action to set the category
  end

  def update
    if @category.update(params_category)
      redirect_to backoffice_categories_path, notice: I18n.t('messages.updated_with', item: @category.description)
    else
      render :edit
    end
  end

  private

    def set_category
      @category = Category.friendly.find(params[:id])
    end

    def params_category
      params.require(:category).permit(:description)
    end
end
