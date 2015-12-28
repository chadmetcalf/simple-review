json.array!(@descriptors) do |descriptor|
  json.extract! descriptor, :id, :level_id, :description, :order
  json.url descriptor_url(descriptor, format: :json)
end
