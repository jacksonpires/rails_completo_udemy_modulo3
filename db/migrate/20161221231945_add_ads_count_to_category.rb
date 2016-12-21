class AddAdsCountToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :ads_count, :integer, default: 0
  end
end
