class AddAttachmentSnapcodeToProfiles < ActiveRecord::Migration
  def self.up
    change_table :profiles do |t|
      t.attachment :snapcode
    end
  end

  def self.down
    remove_attachment :profiles, :snapcode
  end
end
