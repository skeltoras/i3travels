json.array!(@customers) do |customer|
  json.extract! customer, :id, :customer_name, :customer_street, :customer_plz, :customer_city, :customer_country, :customer_telephone, :customer_state, :customer_contact, :customer_telefax, :customer_email, :customer_homepage, :customer_is_active, :customer_show_email, :user_id
  json.url customer_url(customer, format: :json)
end
