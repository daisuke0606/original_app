class OrdersController < ApplicationController
  before_action :set_item, only: [:new, :create]

  def index
    @items = Item.all.order('created_at DESC')
  end

  def new
    @order = Order.new
    @order = OrderAddress.new
  end

  def create
    @order = OrderAddress.new(order_params)
    if @order.valid?
      @order.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def set_item
    @item = Item.find(params[:item_id])
  end

  def order_params
    # params.permit(:item_id, :zip01, :pref01, :add01, :block, :building, :phone, :token).merge(user_id: current_user.id)
    params.require(:order_address).permit(:zip01, :pref01, :add01, :block, :building, :phone).merge(user_id: current_user.id, item_id: params[:item_id])
  end


end
