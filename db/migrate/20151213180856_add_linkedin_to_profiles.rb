class AddLinkedinToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :linkedin, :string
  end
end
