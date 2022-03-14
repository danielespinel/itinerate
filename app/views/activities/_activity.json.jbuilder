json.extract! activity, :id, :trip_id, :name, :day, :time_of_day, :description, :image, :created_at, :updated_at
json.url activity_url(activity, format: :json)
