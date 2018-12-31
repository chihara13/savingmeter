json.extract! saving_item, :id, :itemname, :categoryid, :date, :amount, :memo, :created_at, :updated_at
json.url saving_item_url(saving_item, format: :json)
