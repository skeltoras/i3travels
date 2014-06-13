namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_users
    make_customers
    #make_rentals
  end
end

def make_users
  Faker::Config.locale = 'de'
  admin = User.create!(email:    "admin@example.com",
                       password: "sephi666",
                       password_confirmation: "sephi666") 
  25.times do |n|
    u_mail = Faker::Internet.email
    u_pass = Faker::Internet.password  
    User.create!(
      email: u_mail,
      password: u_pass,
      password_confirmation: u_pass
    )
  end
end

def make_customers
  Faker::Config.locale = 'de'
  20.times do |n|
    c_name = Faker::Company.name
    c_contact = Faker::Name.name
    c_street = Faker::Address.street_address
    c_plz = Faker::Address.postcode
    c_city = Faker::Address.city
    c_state = Faker::Address.country
    c_tel = Faker::PhoneNumber.cell_phone
    c_mail = Faker::Internet.email
    c_web = Faker::Internet.url 
    c_user = "#{n+1}"  
    Customer.create!(
      customer_name: c_name,
      customer_contact: c_contact,
      customer_street: c_street,
      customer_plz: c_plz,
      customer_city: c_city,
      customer_country: c_state,
      customer_telephone: c_tel,
      customer_email: c_mail,
      customer_homepage: c_web,
      user_id: c_user
    )
  end
end

def make_rentals
  5.times do |n|
    r_object = "Ferienhaus"
    r_duration = Faker::Number.number(1)
    r_cost = Faker::Number.number(3)
    r_cdur = Faker::Number.digit
    r_loc = Faker::Address.city
    r_region = Faker::Address.state
    r_state = Faker::Address.country
    r_doffer = "saisonal"
    r_shortdesc = Faker::Lorem.sentence
    r_longdesc = Faker::Lorem.paragraph(2)
    Renting.create!(
      renting_object: r_object,
      renting_min_duration: r_duration,
      renting_cost: r_cost,
      renting_cost_duration: r_cdur,
      renting_location: r_loc,
      renting_region: r_region,
      renting_display_offer: r_doffer,
      renting_object_shortdesc: r_shortdesc,
      renting_object_longdesc: r_longdesc
    )
  end
  
  5.times do |n|
    r_object = "Zimmer"
    r_duration = Faker::Number.number(1)
    r_cost = Faker::Number.number(3)
    r_cdur = Faker::Number.digit
    r_loc = Faker::Address.city
    r_region = Faker::Address.state
    r_state = Faker::Address.country
    r_doffer = "saisonal"
    r_shortdesc = Faker::Lorem.sentence
    r_longdesc = Faker::Lorem.paragraph(2)
    Renting.create!(
      renting_object: r_object,
      renting_min_duration: r_duration,
      renting_cost: r_cost,
      renting_cost_duration: r_cdur,
      renting_location: r_loc,
      renting_region: r_region,
      renting_display_offer: r_doffer,
      renting_object_shortdesc: r_shortdesc,
      renting_object_longdesc: r_longdesc
    )
  end
  
end