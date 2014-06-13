class CreateRentings < ActiveRecord::Migration
  def change
    create_table :rentings do |t|
      t.string :renting_object
      t.string :renting_min_duration
      t.string :renting_cost
      t.string :renting_cost_duration
      t.string :renting_location
      t.string :renting_region
      t.string :renting_country
      t.string :renting_display_offer
      t.string :renting_object_shortdesc
      t.text :renting_object_longdesc
      t.boolean :renting_gallery
      t.boolean :renting_header_picture
      t.boolean :renting_header_slider
      t.boolean :renting_video
      t.boolean :renting_calendar
      t.boolean :renting_form
      t.date :renting_calendar_start
      t.date :renting_calendar_end
      t.references :customer, index: true

      t.timestamps
    end
  end
end
