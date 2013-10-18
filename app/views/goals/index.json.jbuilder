json.array!(@goals) do |goal|
  json.extract! goal, :user_id, :name, :type, :metric
  json.url goal_url(goal, format: :json)
end
