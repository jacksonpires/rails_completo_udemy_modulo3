class Admin < ActiveRecord::Base
  enum role: {:full_access => 0, :restricted_access => 1}

  scope :with_full_access, -> { where(role: 'full_access') }

  # def self.with_full_access
  #   where(role: 'full_access')
  # end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
