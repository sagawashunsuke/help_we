class Mentor < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :user
  has_one :order

  # belongs_to_active_hash :name
  # belongs_to_active_hash :email
  # belongs_to_active_hash :career
  # belongs_to_active_hash :profile
  belongs_to_active_hash :skill
  has_one_attached :image
  
  validates :name, presence: true, length: { maximum: 40 }
  validates :email, presence: true
  validates :career, presence: true, length: { maximum: 1000 }
  validates :profile, presence: true
  validates :skill_id, presence: true, numericality: { other_than: 1 }
  validates :image, presence: true
  
end
