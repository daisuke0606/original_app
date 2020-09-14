class ItemsController < ApplicationController

  before_action :set_action, only: [:show, :edit]

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
      redirect_to root_path, notice: "商品登録が完了しました"
    else
      render 'new'
    end
  end

  def destroy
    item = Item.find(params[:id])
    if item.destroy
      redirect_to root_path, notice: "商品登録の削除が完了しました"
    else
      render "index"
    end
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to root_path, notice: "商品登録の編集が完了しました"
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
      :name,
      :info,
      :category_id,
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
