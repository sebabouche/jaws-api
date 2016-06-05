class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products, id: :uuid do |t|
      t.string :title
      t.integer :priority
      t.uuid :category_id, foreign_key: true
      t.uuid :merchant_id, foreign_key: true
      t.string :img
      t.integer :price_cents
      t.string :desc
      t.string :portion
      t.string :tip
      t.string :expiry
      t.integer :people

      t.timestamps
    end
  end
end
