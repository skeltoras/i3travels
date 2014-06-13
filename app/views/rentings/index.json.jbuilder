json.array!(@rentings) do |renting|
  json.extract! renting, :id, :renting_object, :renting_min_duration, :renting_cost, :renting_cost_duration, :renting_location, :renting_region, :renting_country, :renting_display_offer, :renting_object_shortdesc, :renting_object_longdesc, :renting_gallery, :renting_header_picture, :renting_header_slider, :renting_video, :renting_calendar, :renting_form, :renting_calendar_start, :renting_calendar_end, :customer_id
  json.url renting_url(renting, format: :json)
end
