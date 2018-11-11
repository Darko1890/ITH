class AddAvatarToStores < ActiveRecord::Migration[5.2]
  def change
    add_column :stores, :avatar, :string
  end
end
