class RenameEnumColumnOnProduct < ActiveRecord::Migration[6.1]
  def change
    rename_column :products, :type, :for
  end
end
