# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

10.times do
  City.create!(name: Faker::Address.city)
end

5. times do
  Specialty.create!(specialty_name: ["généraliste", "boucher", "chirurgien", "Kiné", "ORL"].sample)
end

15.times do
  Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: rand(1..10))
end

30.times do
  Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: rand(1..10))
end

20.times do
  DoctorSpecialty.create!(doctor_id: rand(1..15), specialty_id: rand(1..5))
end

60.times do
  Appointment.create!(date: Faker::Time.between(from: DateTime.now, to: DateTime.now + 1, format: :default), city_id: rand(1..10), doctor_id: rand(1..15), patient_id: rand(1..30))
end