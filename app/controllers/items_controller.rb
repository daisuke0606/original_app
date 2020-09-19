class ItemsController < ApplicationController
  before_action :set_action, only: [:show, :edit]
  # before_action :re_item, except: :index

  def index
    @items = Item.all.order('created_at DESC').limit(5)
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.valid?
      @item.save
      redirect_to root_path, notice: "商品が出品されました。"
    else
      render 'new'
    end
  end

  def destroy
    item = Item.find(params[:id])
    if item.destroy
      redirect_to root_path, notice: "商品の削除されました。"
    else
      render "index"
    end
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to root_path, notice: "商品の編集がされました"
    else
      rende "index"
    end
  end

  def edit
  end

  def show
    @comment = Comment.new
    @comments = @item.comments.includes(:user)
  end

  private

  def item_params
    params.require(:item).permit(
      :image,
      :buy,
      :info,
      :cap,
      :tops,
      :botoms,
      :shoes,
      :accessories,
      :status_id,
      :delivery_fee_id,
      :prefectures_id,
      :shipping_days_id,
      :trader_name_id,
      :price
    ).merge(user_id: current_user.id)
  end

  def set_action
    @item = Item.find(params[:id])
  end

end
