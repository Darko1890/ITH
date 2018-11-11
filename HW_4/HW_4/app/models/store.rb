class Store < ApplicationRecord
  has_many :categories, dependent: :destroy
  mount_uploader :avatar, AvatarUploader
end
