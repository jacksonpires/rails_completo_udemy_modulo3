class AverageCache < ActiveRecord::Base
  belongs_to :rater, :class_name => "Member"
  belongs_to :rateable, :polymorphic => true
end
