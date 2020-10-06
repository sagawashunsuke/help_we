class Order < ApplicationRecord
  
  has_one :ticket
  belongs_to :user
  belongs_to :mentor

  
  attr_accessor :token
  validates :price, presence: true
  validates :token, presence: true


end
