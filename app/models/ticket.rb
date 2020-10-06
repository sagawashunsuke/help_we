class Ticket < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :order

end
