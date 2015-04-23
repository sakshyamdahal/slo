json.array!(@scores) do |score|
  json.extract! score, :id, :user_id, :test_id, :percentage
  json.url score_url(score, format: :json)
end
