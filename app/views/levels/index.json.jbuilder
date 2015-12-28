json.array!(@levels) do |level|
  json.extract! level, :id, :indicator_id, :order
  json.url level_url(level, format: :json)
end
