class RemoveFieldNameFromTableName < ActiveRecord::Migration[6.1]
  def change
    remove_column :products, :base64, :string
  end
end
