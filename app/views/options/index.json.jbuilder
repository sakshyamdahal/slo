json.array!(@options) do |option|
  json.extract! option, :id, :question_id, :opt, :correct
  json.url option_url(option, format: :json)
end
