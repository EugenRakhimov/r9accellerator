json.array!(@alerts) do |alert|
  json.extract! alert, :id, :condition, :action, :user_id
  json.url alert_url(alert, format: :json)
end
