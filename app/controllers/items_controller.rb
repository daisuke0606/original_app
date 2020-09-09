class ItemsController < ApplicationController
  def index
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
