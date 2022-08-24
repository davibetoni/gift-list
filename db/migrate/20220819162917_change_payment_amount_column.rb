class ChangePaymentAmountColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :payments, :amount, :value
  end
end
