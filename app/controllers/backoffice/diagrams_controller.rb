class Backoffice::DiagramsController < BackofficeController
  def index
    %x(bundle exec erd --filename='public/diagram')
  end
end
