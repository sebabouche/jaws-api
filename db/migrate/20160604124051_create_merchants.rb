class CreateMerchants < ActiveRecord::Migration[5.0]
  def change
    create_table :merchants, id: :uuid do |t|
      t.string :name
      t.string :img

      t.timestamps null: false
    end
  end
end
