class AddAttachmentPictureToAds < ActiveRecord::Migration
  def self.up
    change_table :ads do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :ads, :picture
  end
end
