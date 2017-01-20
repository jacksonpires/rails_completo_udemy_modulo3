class CreateProfileMembers < ActiveRecord::Migration
  def change
    create_table :profile_members do |t|
      t.string :first_name
      t.string :second_name
      t.date :birthdate
      t.references :member, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
