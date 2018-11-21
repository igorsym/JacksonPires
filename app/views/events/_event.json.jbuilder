json.extract! event, :id, :name, :sport, :event_date, :start_time, :end_time, :frequency, :place, :description, :all_can_invite, :created_at, :updated_at
json.url event_url(event, format: :json)
