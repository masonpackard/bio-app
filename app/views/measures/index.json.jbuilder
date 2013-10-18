json.array!(@measures) do |measure|
  json.extract! measure, :user_id, :measure_date, :measure_distance, :measure_calories, :measure_elevation
  json.url measure_url(measure, format: :json)
end
