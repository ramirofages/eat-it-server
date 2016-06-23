json.array!(@order.requests) do |request|
  json.extract! request, :id, :requester, :comment
  json.url order_request_url(@order, request, format: :json)
end
