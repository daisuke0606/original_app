class OrderAddress
  include ActiveModel::Model
  attr_accessor :user_id, :item_id, :zip01, :pref01, :add01, :block, :building, :phone, :order_id

  NUMBER_DIFFERENT = /\A\d{10,11}\z/

  with_options presence: true do
    validates :zip01
    validates :pref01
    validates :add01
    validates :block
    validates :phone, format: { with: NUMBER_DIFFERENT, message: 'is invalid. Include 10-11' }
    validates :user_id
    validates :item_id
    # validates :token
  end

  def save
    order = Order.create(user_id: user_id, item_id: item_id)

    Address.create(zip01: zip01, pref01: pref01, add01: add01, block: block, building: building, phone: phone, order_id: order.id)
  end
end