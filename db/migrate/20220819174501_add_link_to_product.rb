class AddLinkToProduct < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :store_url, :string
  end
end
