json.array!(@criteria) do |criterium|
  json.extract! criterium, :id, :creator, :rubric_id, :active, :description, :order
  json.url criterium_url(criterium, format: :json)
end
