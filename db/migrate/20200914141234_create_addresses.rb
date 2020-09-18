class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string     :zip01,    null: false
      t.string     :pref01,   null: false, default: ""
      t.string     :add01,    null: false, default: ""
      t.string     :block,    null: false
      t.string     :building
      t.string     :phone,    null: false 
      t.references :order,    null: false, foreign_key: true
      t.timestamps
    end
  end
end
