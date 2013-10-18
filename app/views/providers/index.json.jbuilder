json.array!(@providers) do |provider|
  json.extract! provider, :first_name, :last_name, :email, :active, :token
  json.url provider_url(provider, format: :json)
end
