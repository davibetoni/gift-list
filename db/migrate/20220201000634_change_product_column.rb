class ChangeProductColumn < ActiveRecord::Migration[6.1]
  def change
    change_column :products, :photo, :string, limit: nil
  end
end
