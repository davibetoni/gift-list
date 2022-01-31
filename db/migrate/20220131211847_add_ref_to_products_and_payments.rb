class AddRefToProductsAndPayments < ActiveRecord::Migration[6.1]
  def change
    add_column :payments, :product_id, :integer
    add_foreign_key :payments, :products, column: :product_id
  end
end
