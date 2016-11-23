class AddPriceCentsToAds < ActiveRecord::Migration
  def change
    add_column :ads, :price_cents, :integer, default: 0
  end
end
