class AddCategoryToSavingItems < ActiveRecord::Migration[5.2]
  def change
    add_column :saving_items, :category, :string
  end
end
