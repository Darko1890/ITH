class AddAttachmentCityAvatarToCities < ActiveRecord::Migration[5.2]
  def self.up
    change_table :cities do |t|
      t.attachment :city_avatar
    end
  end

  def self.down
    remove_attachment :cities, :city_avatar
  end
end
