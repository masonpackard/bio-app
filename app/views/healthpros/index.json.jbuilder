json.array!(@healthpros) do |healthpro|
  json.extract! healthpro, :user_id, :first_name, :last_name, :title
  json.url healthpro_url(healthpro, format: :json)
end
