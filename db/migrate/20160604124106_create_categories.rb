class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories, id: :uuid do |t|
      t.integer :priority
      t.string :name
      t.string :displayName
      t.string :visibility

      t.timestamps null: false
    end
  end
end
