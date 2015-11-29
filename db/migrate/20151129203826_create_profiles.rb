class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :nickname
      t.text :description
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
