json.array!(@rubrics) do |rubric|
  json.extract! rubric, :id
  json.url rubric_url(rubric, format: :json)
end
