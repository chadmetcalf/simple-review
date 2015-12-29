json.array!(@indicators) do |indicator|
  json.extract! indicator, :id, :creator, :rubric_id, :active, :description, :order
  json.url indicator_url(indicator, format: :json)
end
