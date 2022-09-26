class AddEnumColumnOnProduct < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :type, :integer, default: 0
  end
end
