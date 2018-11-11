class AddAvatarToVendors < ActiveRecord::Migration[5.2]
  def change
    add_column :vendors, :avatar, :string
  end
end
