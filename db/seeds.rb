# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

channel1 = Channel.create(name: "Sun TV")
channel2 = Channel.create(name: "K TV")
channel3 = Channel.create(name: "Star Movies")
channel4 = Channel.create(name: "HBO Movies")
channel5 = Channel.create(name: "Thanthi TV")

show01 = Show.create(name: "Annai Akhilandeswari", show_type: "Mega Serial")
show02 = Show.create(name: "Saroja", show_type: "Movie")
show03 = Show.create(name: "Kandha Kadamba Kathirvela", show_type: "Movie")
show04 = Show.create(name: "Anniyan", show_type: "Movie")
show05 = Show.create(name: "Baby's Day Out", show_type: "Movie")
show06 = Show.create(name: "The Karate Kid (2010)", show_type: "Movie")
show07 = Show.create(name: "Harry Potter and the Sorcerer's Stone", show_type: "Movie")
show08 = Show.create(name: "Harry Potter and the Chamber of Secrets", show_type: "Movie")
show09 = Show.create(name: "Indraya Naal", show_type: "News Report")
show10 = Show.create(name: "10 mani Seidhigal", show_type: "News Report")

[{
  channel: channel1,
  show: show01,
  time_from: 1800,
  time_to: 1830,
  airs_on: DateTime.parse("2020/08/02T18:00+0530"),
  repeats_on: "Mon,Tue,Wed,Thu,Fri"
}, {
  channel: channel1,
  show: show02,
  time_from: 1430,
  time_to: 1730,
  airs_on: DateTime.parse("2020/08/10T14:30+0530"),
  repeats_on: ""
}, {
  channel: channel2,
  show: show03,
  time_from: 1000,
  time_to: 1300,
  airs_on: DateTime.parse("2020/08/12T10:00+0530"),
  repeats_on: ""
}, {
  channel: channel2,
  show: show04,
  time_from: 1300,
  time_to: 1600,
  airs_on: DateTime.parse("2020/08/21T13:00+0530"),
  repeats_on: ""
}, {
  channel: channel3,
  show: show05,
  time_from: 1100,
  time_to: 1310,
  airs_on: DateTime.parse("2020/08/10T11:00+0530"),
  repeats_on: ""
}, {
  channel: channel3,
  show: show06,
  time_from: 1630,
  time_to: 1910,
  airs_on: DateTime.parse("2020/08/30T16:30+0530"),
  repeats_on: ""
}, {
  channel: channel4,
  show: show07,
  time_from: 2100,
  time_to: 2330,
  airs_on: DateTime.parse("2020/08/16T21:00+0530"),
  repeats_on: ""
}, {
  channel: channel4,
  show: show08,
  time_from: 2100,
  time_to: 2330,
  airs_on: DateTime.parse("2020/08/18T21:00+0530"),
  repeats_on: ""
}, {
  channel: channel5,
  show: show09,
  time_from: 2100,
  time_to: 2200,
  airs_on: DateTime.parse("2020/08/01T21:00+0530"),
  repeats_on: "Mon,Tue,Wed,Thu,Fri,Sat,Sun"
}, {
  channel: channel5,
  show: show10,
  time_from: 1000,
  time_to: 1030,
  airs_on: DateTime.parse("2020/08/01T10:00+0530"),
  repeats_on: "Mon,Tue,Wed,Thu,Fri,Sat,Sun"
}].each do |television_show_data|
  TelevisionShow.create(television_show_data)
end

[{
  name: "Anand",
  email: "anand@mymail.com",
  password: "Password12",
  password_confirmation: "Password12"
}, {
  name: "Babu",
  email: "babu@mymail.com",
  password: "Password34",
  password_confirmation: "Password34"
}].each do |user_data|
  User.create(user_data)
end
