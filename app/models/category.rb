class Category < ActiveRecord::Base

  # Gem Friendly Id
  include FriendlyId
  friendly_id :description, use: :slugged

  # Associations
  has_many :ads

  # Validations
  validates_presence_of :description

  # Scopes
  scope :order_by_description, -> { order(:description) }

end
