class CreateSavingItems < ActiveRecord::Migration[5.2]
  def change
    create_table :saving_items do |t|
      t.string :itemname
      t.integer :categoryid
      t.date :date
      t.integer :amount
      t.text :memo

      t.timestamps
    end
  end
end
