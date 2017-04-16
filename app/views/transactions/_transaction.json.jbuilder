json.extract! transaction, :id, :User_id, :App_id, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
