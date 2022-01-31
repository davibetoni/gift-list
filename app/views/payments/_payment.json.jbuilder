json.extract! payment, :id, :payer_name, :payer_phone, :description, :amount, :payer_city, :created_at, :updated_at
json.url payment_url(payment, format: :json)
