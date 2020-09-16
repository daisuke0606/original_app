class OrdersController < ApplicationController
  def index
    @items = Item.all.order('created_at DESC')
  end

  def new
    @item = Item.find(params[:item_id])
  end

end
