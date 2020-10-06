class OrderTicket

  include ActiveModel::Model

  attr_accessor :token, :ticket_id, :user_id, :name, :price

  validates :token, presence: true
  validates :ticket_id, presence: true
  validates :user_id, presence: true
  validates :name, presence: true
  validates :price, presence: true 
 
  def save

    Ticket.create(user_id: user_id, name: name, price: price)

    Order.create(user_id: user_id, ticket_id: ticket_id)
  end

end