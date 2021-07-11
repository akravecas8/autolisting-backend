class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :base64
      t.text :description
      t.string :category
      t.integer :seller_id

      t.timestamps
    end
  end
end
