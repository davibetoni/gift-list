class CreatePayments < ActiveRecord::Migration[6.1]
  def change
    create_table :payments do |t|
      t.string :payer_name
      t.string :payer_phone
      t.string :description
      t.float :amount
      t.string :payer_city

      t.timestamps
    end
  end
end
