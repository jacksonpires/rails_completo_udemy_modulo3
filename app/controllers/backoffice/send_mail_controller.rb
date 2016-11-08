class Backoffice::SendMailController < ApplicationController

  def edit
    @admin = Admin.find(params[:id])

    respond_to do |format|
      format.js
    end
  end

  def create
    #
  end

end
