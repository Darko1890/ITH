class AddAttachmentAvatarToCountries < ActiveRecord::Migration[5.2]
  def self.up
    change_table :countries do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :countries, :avatar
  end
end
