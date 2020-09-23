class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string     :buy,              null: false
      t.text       :info,             null: false
      t.integer    :status_id,        null: false
      t.string     :cap
      t.string     :tops
      t.string     :botoms
      t.string     :shoes
      t.string     :accessories
      t.integer    :delivery_fee_id,  null: false
      t.integer    :trader_name_id,   null: false
      t.integer    :prefectures_id,   null: false
      t.integer    :shipping_days_i,  null: false
      t.integer    :price,            null: false
      t.text       :address_map,      null: false
      t.float      :latitude,         null: false
      t.float      :longitude,        null: false
      t.references :user,             null: false,     foreign_key: true
      t.timestamps
    end
  end
end
