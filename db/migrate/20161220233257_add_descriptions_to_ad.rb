class AddDescriptionsToAd < ActiveRecord::Migration
  def change
    add_column :ads, :description_md, :text
    add_column :ads, :description_short, :text
  end
end
