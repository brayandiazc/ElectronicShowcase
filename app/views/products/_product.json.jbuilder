json.extract! product, :id, :user_id, :name, :description, :category_id, :price, :release_date, :link_to_website, :available, :created_at, :updated_at
json.url product_url(product, format: :json)
