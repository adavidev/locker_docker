# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

small = {height:18, width:18, depth:18}
medium = {height:36, width:36, depth:36}
large = {height:72, width:36, depth:36}
1000.times do
    Locker.create({height:small[:height], width:small[:width], depth:small[:depth]})
    Locker.create({height:medium[:height], width:medium[:width], depth:medium[:depth]})
    Locker.create({height:large[:height], width:large[:width], depth:large[:depth]})
end