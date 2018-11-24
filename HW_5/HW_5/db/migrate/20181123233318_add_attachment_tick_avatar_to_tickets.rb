class AddAttachmentTickAvatarToTickets < ActiveRecord::Migration[5.2]
  def self.up
    change_table :tickets do |t|
      t.attachment :tick_avatar
    end
  end

  def self.down
    remove_attachment :tickets, :tick_avatar
  end
end
