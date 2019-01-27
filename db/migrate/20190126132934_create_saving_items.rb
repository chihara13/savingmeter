class CreateSavingItems < ActiveRecord::Migration[5.2]
  def change
    create_table :saving_items do |t|
      t.string :item_name
      t.integer :category_id
      t.references :user, foreign_key: true
      t.date :date
      t.integer :amount
      t.text :content

      t.timestamps
    end
    add_index :saving_items, [:user_id, :created_at]
  end
end
