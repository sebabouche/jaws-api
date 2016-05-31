class AddFavoriteColorToMerchants < ActiveRecord::Migration
  def change
    add_column :merchants, :favorite_color, :string
  end
end
