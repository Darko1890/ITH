class AddAttachmentPAvatarToPlanes < ActiveRecord::Migration[5.2]
  def self.up
    change_table :planes do |t|
      t.attachment :p_avatar
    end
  end

  def self.down
    remove_attachment :planes, :p_avatar
  end
end
