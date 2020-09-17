class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :status
  belongs_to_active_hash :delivery_fee
  belongs_to_active_hash :prefectures
  belongs_to_active_hash :shipping_days
  belongs_to_active_hash :trader_name

  NAME_HARF_NAMBER = /\A[0-9]+\z/.freeze

  with_options presence: true do
    validates :status_id
    validates :delivery_fee_id
    validates :prefectures_id
    validates :shipping_days_id
    validates :info
    validates :buy
    validates :price, numericality: { greater_than: 299, less_than: 10_000_000 },
                      format: { with: NAME_HARF_NAMBER, message: 'には半角数字に設定してください' }
    validates :image
  end

  with_options numericality: { other_than: 0 } do
    validates :status_id
    validates :delivery_fee_id
    validates :shipping_days_id
    validates :prefectures_id
    validates :trader_name_id
  end

  belongs_to :user
  has_many :comments, dependent: :destroy
  has_one_attached :image
end
