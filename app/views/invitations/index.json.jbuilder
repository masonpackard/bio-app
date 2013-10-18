json.array!(@invitations) do |invitation|
  json.extract! invitation, :user_id, :provider_id
  json.url invitation_url(invitation, format: :json)
end
