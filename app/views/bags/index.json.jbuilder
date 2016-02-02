json.array!(@bags) do |bag|
  json.extract! bag, :id, :height, :width, :depth, :ticket_id, :locker_id, :created_at, :updated_at
  json.url bag_url(bag, format: :json)
end
