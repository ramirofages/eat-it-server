json.extract! @provider, :id, :name, :description, :menu
json.url provider_url(@provider, format: :json)
