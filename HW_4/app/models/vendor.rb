class Vendor < ApplicationRecord
  belongs_to :supplier
  mount_uploader :avatar, AvatarUploader
end
