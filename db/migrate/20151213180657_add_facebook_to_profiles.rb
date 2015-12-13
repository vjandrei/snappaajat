class AddFacebookToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :facebook, :string
  end
end
