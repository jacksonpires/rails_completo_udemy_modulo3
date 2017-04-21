class Backoffice::DashboardController < BackofficeController
  def index
    # render app/views/backoffice/dashboard/index.html.erb
    @categories_groups = Category.all.collect {|c| [c.description, c.ads_count] }
  end
end
