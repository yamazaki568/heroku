json.extract! product, :id, :title, :author, :published_on, :showing, :price, :created_at, :updated_at
json.url product_url(product, format: :json)
