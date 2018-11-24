class Passenger < ApplicationRecord
  belongs_to :plane
  has_many :tickets, dependent: :destroy
  validates_uniqueness_of :name, scope: :plane_id, :presence => true
  validates :image, :presence => true, :uniqueness => { :allow_blank => true}
  has_attached_file :avatar, styles: { large:"600x600>", medium: "300x300>", thumb: "150x150#" }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
