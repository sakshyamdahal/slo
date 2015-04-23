json.array!(@questions) do |question|
  json.extract! question, :id, :ques
  json.url question_url(question, format: :json)
end
