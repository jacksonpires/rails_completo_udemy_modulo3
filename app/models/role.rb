class Role < ActiveRecord::Base

  OPTIONS = {
    full_access: "Acesso Completo",
    restricted_access: "Acesso Restrito"
  }

  def self.availables
    OPTIONS.map do |key, value|
      key.to_s
    end
  end

  has_and_belongs_to_many :admins, :join_table => :admins_roles

  belongs_to :resource,
             :polymorphic => true  # ,:optional => true --> Rails 5+

  validates :resource_type,
            :inclusion => { :in => Rolify.resource_types },
            :allow_nil => true

  validates :name, inclusion: { in: Role.availables }

  scopify
end
