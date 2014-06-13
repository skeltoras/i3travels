class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :customer_name
      t.string :customer_street
      t.string :customer_plz
      t.string :customer_city
      t.string :customer_country
      t.string :customer_telephone
      t.string :customer_state
      t.string :customer_contact
      t.string :customer_telefax
      t.string :customer_email
      t.string :customer_homepage
      t.boolean :customer_is_active
      t.boolean :customer_show_email
      t.references :user, index: true

      t.timestamps
    end
  end
end
