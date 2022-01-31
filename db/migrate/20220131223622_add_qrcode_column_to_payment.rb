class AddQrcodeColumnToPayment < ActiveRecord::Migration[6.1]
  def change
    add_column :payments, :qr_code, :string
  end
end
