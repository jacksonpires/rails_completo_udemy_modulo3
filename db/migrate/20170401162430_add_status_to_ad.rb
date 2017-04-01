class AddStatusToAd < ActiveRecord::Migration
  def change
    add_column :ads, :status, :integer, default: 0
  end
end
