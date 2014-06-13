json.array!(@travels) do |travel|
  json.extract! travel, :id, :travel_type, :travel_arrival, :travel_location, :travel_region, :travel_country, :travel_display_offer, :travel_object_shortdesc, :travel_object_longdesc, :travel_gallery, :travel_header_picture, :travel_header_slider, :travel_video, :travel_calendar, :travel_form, :travel_calendar_start, :travel_calendar_end, :customer_id
  json.url travel_url(travel, format: :json)
end
