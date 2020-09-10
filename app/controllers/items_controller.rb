class ItemsController < ApplicationController
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
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
    item = Item.find(params[:id])
    if item.destroy
      redirect_to root_path
    else
      render "index"
    end
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to root_path
    else
      rende "index"
    end
  end

  def edit
    @item = Item.find(params[:id])
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

end
