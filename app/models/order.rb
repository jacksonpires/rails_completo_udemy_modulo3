class Order < ActiveRecord::Base

  # Statuses
  enum status: [:requested, :waiting, :analysing, :paid, :avaliable, :dispute, :returned, :canceled, :debited, :temporary_retention]

  # Associations
  belongs_to :ad
  belongs_to :buyer, class_name: "Member"
end
