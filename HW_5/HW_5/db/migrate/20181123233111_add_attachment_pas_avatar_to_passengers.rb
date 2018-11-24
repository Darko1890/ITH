class AddAttachmentPasAvatarToPassengers < ActiveRecord::Migration[5.2]
  def self.up
    change_table :passengers do |t|
      t.attachment :pas_avatar
    end
  end

  def self.down
    remove_attachment :passengers, :pas_avatar
  end
end
