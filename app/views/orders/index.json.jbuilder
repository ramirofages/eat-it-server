json.array!(@orders) do |order|
  json.extract! order, :id, :name, :provider_id, :description, :enabled
  json.url order_url(order, format: :json)
end
