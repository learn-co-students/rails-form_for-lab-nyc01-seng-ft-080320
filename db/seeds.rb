# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Student.create(first_name: "Samantha", last_name: "Lurio")
Student.create(first_name: "Kevin", last_name: "Park")
Student.create(first_name: "Augusto", last_name: "Ibarrola")

SchoolClass.create(title: "Mod 1", room_number: 5)
SchoolClass.create(title: "Mod 2", room_number: 1)