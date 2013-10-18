json.array!(@notes) do |note|
  json.extract! note, :user_id, :body
  json.url note_url(note, format: :json)
end
