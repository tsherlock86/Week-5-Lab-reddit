class AddFirstNameToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :first_name, :string
    add_column :profiles, :last_name, :string
    add_column :profiles, :bio, :text
    add_column :profiles, :user_id, :integer
  end
end
