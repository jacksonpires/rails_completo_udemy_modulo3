module Backoffice::AdminsHelper
  OptionsForRoles = Struct.new(:id, :description)

  def options_for_roles
    Role::OPTIONS.map do |key, value|
      OptionsForRoles.new(key, value)
    end
  end
end
