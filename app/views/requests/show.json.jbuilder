json.extract! @request, :id, :requester, :comment, :order_id
json.url provider_url(@request, format: :json)
