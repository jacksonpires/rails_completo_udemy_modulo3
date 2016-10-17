class AddNameAndRoleToAdmin < ActiveRecord::Migration
  def change
    add_column :admins, :name, :string
    add_column :admins, :role, :integer
  end
end
