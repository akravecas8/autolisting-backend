class AddFieldNameToTableName < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :base64, :text
  end
end
