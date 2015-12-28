json.array!(@criteria) do |criterium|
  json.extract! criterium, :id, :created_by, :rubric_id, :active, :description, :order
  json.url criterium_url(criterium, format: :json)
end
