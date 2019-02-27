json.extract! saving_item, :id, :item_name, :category_id, :user_id, :date, :amount, :content, :created_at, :updated_at
json.url saving_item_url(saving_item, format: :json)
