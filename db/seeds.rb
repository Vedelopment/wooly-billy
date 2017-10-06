# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Area.destroy_all
Hair.destroy_all

area_data = [{
  title: "Head",
  desc: "for hairs on the head",
}, {
  title: "Brow Bone",
  desc: "for hairs on the brow bone",
}, {
  title: "Face",
  desc: "for hairs on the face and chin",
}]
Area.create(area_data)

hair_data = [{
  x: 2,
  y: 8,
  rotate: 0.1,
  growable: Area.first,
}, {
  x: 3,
  y: 4,
  rotate: 0.3,
  growable: Area.first,
}, {
  x: 6,
  y: 1,
  rotate: 0.8,
  growable: Area.first,
}, {
  x: 3,
  y: 4,
  rotate: 0.3,
  growable: Area.second,
}, {
  x: 6,
  y: 1,
  rotate: 0.8,
  growable: Area.second,
}, {
  x: 3,
  y: 4,
  rotate: 0.3,
  growable: Area.third,
}, {
  x: 6,
  y: 1,
  rotate: 0.8,
  growable: Area.third,
}]
# Hair.create(hair_data)

p Area.count
p Hair.count
