module Backoffice::AdminsHelper
  OptionsForRoles = Struct.new(:id, :description)

  def options_for_roles
    Admin.roles_i18n.map do |key, value|
      OptionsForRoles.new(key, value)
    end
  end
end
