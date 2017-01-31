# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Record.delete_all
50.times do |p|
  Record.create(c_id: Faker::Number.unique.between(1, 50), 
  c_fn: Faker::Name.first_name, 
  c_ln: Faker::Name.last_name, 
  c_address: Faker::Address.street_address, 
  c_state: Faker::Address.state, 
  c_zip: Faker::Address.zip, 
  p_num: Faker::Number.unique.between(100, 200), 
  p_descript: Faker::Lorem.sentence, 
  p_instock: 200, 
  p_date: Faker::Date.between(2.months.ago, 1.months.ago), 
  p_sold: Faker::Number.between(1, 50), 
  p_qoh: Faker::Number.between(0, 150), 
  p_price: Faker::Number.decimal(2), 
  a_id: Faker::Number.between(1, 50), 
  a_date: Faker::Date.between(2.months.ago, 1.months.ago), 
  a_paid: Faker::Boolean.boolean(0.8), 
  i_id: Faker::Number.between(1, 50), 
  i_order_size: Faker::Number.between(50, 300), 
  i_vendor_fn: "Jack", 
  i_vendor_ln: "Johnson", 
  i_vendor_email: "jackjohnson@example.com", 
  i_order_date: Faker::Date.between(2.days.ago, Date.today), 
  p_name: Faker::Space.galaxy + ' ' + 'shoes')
end