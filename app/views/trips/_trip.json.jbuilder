json.extract! trip, :id, :start_date, :end_date, :location, :name, :image, :planner_id, :created_at, :updated_at
json.url trip_url(trip, format: :json)
