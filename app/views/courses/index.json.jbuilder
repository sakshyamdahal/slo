json.array!(@courses) do |course|
  json.extract! course, :id, :name, :teacher, :school
  json.url course_url(course, format: :json)
end
