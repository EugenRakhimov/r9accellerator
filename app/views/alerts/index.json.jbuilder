json.array!(@alerts) do |alert|
  json.extract! alert, :id, :watch_param, :condition, :comparer
  json.url alert_url(alert, format: :json)
end
