# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email: 'bob2@mail.com', password: '12345678', password_confirmation: '12345678')
Profile.create(user_id: '1', first_name: 'Bob', last_name: 'Smith', gender: 'male', height_feet: '3', height_inches: '1')
Notes.create(user_id: '1', body: 'Here is the sample note.')
Notes.create(user_id: '1', body: 'Here is another sample note.')
Notes.create(user_id: '1', body: 'Here is yet another sample note.')
Measures.create(user_id: '1', measure_distance: '1535', measure_calories: '230', measure_elevation: '12')
Measures.create(user_id: '1', measure_distance: '2367', measure_calories: '520', measure_elevation: '18')
Measures.create(user_id: '1', measure_distance: '3000', measure_calories: '1200', measure_elevation: '23')
Measures.create(user_id: '1', measure_distance: '1700', measure_calories: '400', measure_elevation: '14')