class OrdersController < ApplicationController
  before_action :authenticate_user!, only:[:index]

  def index
    @tickets = Ticket.new
  end

  def new

  end

  def create
    @ticket = Ticket.new(ticket_params)
    if @ticket.valid?
      pay_item
      @ticket.save
      return redirect_to root_path
    else
      render 'index'
    end
  end

  private

#   def set_item
#     @item = Item.find(params[:item_id])
#   end

  def ticket_params
    # @ticket = Ticket.find(params[:ticket_id])
    params.permit(:token, :name, :price ).merge(user_id: current_user.id)
  end

  def pay_item
    Payjp.api_key = ENV["PAYJP_SECRET_KEY"]
    Payjp::Charge.create(
      amount:address_params[:price],  
      card: address_params[:token],   
      currency:'jpy'             
    )
  end
end
