class CreateTravels < ActiveRecord::Migration
  def change
    create_table :travels do |t|
      t.string :travel_type
      t.string :travel_arrival
      t.string :travel_location
      t.string :travel_region
      t.string :travel_country
      t.string :travel_display_offer
      t.string :travel_object_shortdesc
      t.text :travel_object_longdesc
      t.boolean :travel_gallery
      t.boolean :travel_header_picture
      t.boolean :travel_header_slider
      t.boolean :travel_video
      t.boolean :travel_calendar
      t.boolean :travel_form
      t.date :travel_calendar_start
      t.date :travel_calendar_end
      t.references :customer, index: true

      t.timestamps
    end
  end
end
