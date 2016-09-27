class Site::HomeController < ApplicationController
  layout "site"

  def index
    @categories = Category.all
  end
end
