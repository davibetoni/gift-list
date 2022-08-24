class ChangePaymentColumn < ActiveRecord::Migration[6.1]
  def change
    change_column(:payments, :amount, :string)
  end
end
