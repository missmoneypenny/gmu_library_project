class AddPriceToBook < ActiveRecord::Migration
  def change
    add_column :books, :price, :decimal
  end
end
