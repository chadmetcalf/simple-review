json.array!(@reviews) do |review|
  json.extract! review, :id, :creator_id, :reviewer_id, :reviewee_id, :rubric_id, :active, :document
  json.url review_url(review, format: :json)
end
