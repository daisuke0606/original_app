class OrdersController < ApplicationController
  before_action :set_item, only: [:new, :create]
  before_action :user_item, except: :index
  before_action :re_item, except: :index

  def index
    @items = Item.all.order('created_at DESC')
  end

  def new
    @order = Order.new
    @order = OrderAddress.new
  end

  def create
    @order = OrderAddress.new(order_params)
    # binding.pry
    if @order.valid?
      pay_item
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
    params.require(:order_address).permit(:zip01, :pref01, :add01, :block, :building, :phone, :token).merge(user_id: current_user.id, item_id: params[:item_id])
  end

  def user_item
    item = Item.find(params[:item_id])
      if current_user.id == item.user_id
        redirect_to root_path
      end
  end

  def re_item
    item = Item.find(params[:item_id])
      unless item.order.nil?
        redirect_to root_path, notice: "この商品は他のユーザーに購入されました"
      end
  end

  def pay_item
    Payjp.api_key = "sk_test_3db54a6573b6b32a74e4733f"
    Payjp::Charge.create(
      amount: @item.price,
      card: order_params[:token],
      currency:'jpy'
    )
  end

end
