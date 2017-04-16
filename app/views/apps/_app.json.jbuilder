json.extract! app, :id, :title, :description, :price, :image_url, :category, :platform, :downloads, :created_at, :updated_at
json.url app_url(app, format: :json)
