json.array!(@shipments) do |shipment|
  json.extract! shipment, :id, :custom_number, :gst, :payment_date, :status, :user_id
  json.url shipment_url(shipment, format: :json)
end
