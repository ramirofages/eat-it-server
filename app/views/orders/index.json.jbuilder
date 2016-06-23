json.array!(@orders) do |order|
  json.extract! order, :id, :name, :supplier_id, :request_id
  json.url order_url(order, format: :json)
end
