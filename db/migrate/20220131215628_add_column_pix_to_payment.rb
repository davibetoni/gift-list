class AddColumnPixToPayment < ActiveRecord::Migration[6.1]
  def change
    add_column :payments, :pix, :string
  end
end
