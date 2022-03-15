json.extract! available_day, :id, :day, :day_name, :trip_id, :created_at,
              :updated_at
json.url available_day_url(available_day, format: :json)
