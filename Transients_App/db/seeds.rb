require 'faker'

User.destroy_all
Track.destroy_all

100.times do ||
   
x = ::Faker::Internet.user_name
y = ::Faker::Internet.email
z = ::Faker::Internet.password(8)
a = ::Faker::Internet.url #website
b = ::Faker::Lorem.sentence #about
c = ::Faker::Avatar.image #img_url
    
User.create({username: x, email: y, password: z, password_confirmation: z, website: a, about: b, img_url: c})    
    
end

10.times do ||
    100.times do |i|

    id = User.first.id + i
    x = Faker::Hipster.words(2) #title
    y = ::Faker::Number.between(0, 100000) #plays
    z = ["music", "stories", "poetry", "gratitude", "wishes", "rants"].sample #category
    a = ::Faker::Internet.url #website
    b = ::Faker::Lorem.paragraph #about
    c = ::Faker::Number.between(0, 300) #length

    Track.create({user_id: id, plays: y, title: x, category: z, track_url: a, length: c})    

    end
end

User.create({username: "ztotta", email: "ztotta@gmail.com", password: "abc123", password_confirmation: "abc123", website: "github.com/ztotta", about: "Just gotta keep puttin the ball in the basket...", img_url: "https://media.licdn.com/mpr/mpr/shrinknp_200_200/p/1/005/038/08e/1896d4c.jpg"})
Track.create({user_id: User.last.id, plays: 720, title: "Whistlin' 'n' Hootin'", category: "music", track_url: "https://www.youtube.com/watch?v=dQw4w9WgXcQ", length: 101})   


#User.create(username: "CoopsMalone23", email: "coops23@gmail.com", website: "oop23@gmail.com", about: "Just gotta keep puttin the ball in the basket...", img_url: "http://larrybrownsports.com/wp-content/uploads/2015/02/karl-malone.jpg", password: "abc123", password_confirmation: "abc123")
#User.create(username: "HoopsMalone23", email: "hoops23@gmail.com", website: "oop23@gmail.com", about: "Just gotta keep puttin the ball in the basket...", img_url: "http://larrybrownsports.com/wp-content/uploads/2015/02/karl-malone.jpg", password: "abc123", password_confirmation: "abc123")
#User.create(username: "SwoopsMalone23", email: "swoops23@gmail.com", website: "oop23@gmail.com", about: "Just gotta keep puttin the ball in the basket...", img_url: "http://larrybrownsports.com/wp-content/uploads/2015/02/karl-malone.jpg", password: "abc123", password_confirmation: "abc123")
#User.create(username: "ScoopsMalone23", email: "scoops23@gmail.com", website: "oop23@gmail.com", about: "Just gotta keep puttin the ball in the basket...", img_url: "http://larrybrownsports.com/wp-content/uploads/2015/02/karl-malone.jpg", password: "abc123", password_confirmation: "abc123")
#User.create(username: "RoopsMalone23", email: "roops23@gmail.com", website: "roop23@gmail.com", about: "Just gotta keep puttin the ball in the basket...", img_url: "http://larrybrownsports.com/wp-content/uploads/2015/02/karl-malone.jpg", password: "abc123", password_confirmation: "abc123")
#User.create(username: "RoopsMalone23", email: "roops23@gmail.com", website: "roop23@gmail.com", about: "Just gotta keep puttin the ball in the basket...", img_url: "http://larrybrownsports.com/wp-content/uploads/2015/02/karl-malone.jpg", password: "abc123", password_confirmation: "abc123")
#User.create(username: "RwoopsMalone23", email: "rswoops23@gmail.com", website: "rwoop23@gmail.com", about: "Just gotta keep puttin the ball in the basket...", img_url: "http://larrybrownsports.com/wp-content/uploads/2015/02/karl-malone.jpg", password: "abc123", password_confirmation: "abc123")
#User.create(username: "RcoopsMalone23", email: "rscoops23@gmail.com", website: "rscoop23@gmail.com", about: "Just gotta keep puttin the ball in the basket...", img_url: "http://larrybrownsports.com/wp-content/uploads/2015/02/karl-malone.jpg", password: "abc123", password_confirmation: "abc123")
#User.create(username: "CdoopsMalone23", email: "coops23@gmail.com", website: "oop23@gmail.com", about: "Just gotta keep puttin the ball in the basket...", img_url: "http://larrybrownsports.com/wp-content/uploads/2015/02/karl-malone.jpg", password: "abc123", password_confirmation: "abc123")
#User.create(username: "HoopsMalone23", email: "hoops23@gmail.com", website: "oop23@gmail.com", about: "Just gotta keep puttin the ball in the basket...", img_url: "http://larrybrownsports.com/wp-content/uploads/2015/02/karl-malone.jpg", password: "abc123", password_confirmation: "abc123")
#User.create(username: "SwoopsMalone23", email: "swoops23@gmail.com", website: "oop23@gmail.com", about: "Just gotta keep puttin the ball in the basket...", img_url: "http://larrybrownsports.com/wp-content/uploads/2015/02/karl-malone.jpg", password: "abc123", password_confirmation: "abc123")
#User.create(username: "ScoopsMalone23", email: "scoops23@gmail.com", website: "oop23@gmail.com", about: "Just gotta keep puttin the ball in the basket...", img_url: "http://larrybrownsports.com/wp-content/uploads/2015/02/karl-malone.jpg", password: "abc123", password_confirmation: "abc123")
#User.create(username: "CoopsMalone23", email: "coops23@gmail.com", website: "oop23@gmail.com", about: "Just gotta keep puttin the ball in the basket...", img_url: "http://larrybrownsports.com/wp-content/uploads/2015/02/karl-malone.jpg", password: "abc123", password_confirmation: "abc123")
#User.create(username: "HoopsMalone23", email: "hoops23@gmail.com", website: "oop23@gmail.com", about: "Just gotta keep puttin the ball in the basket...", img_url: "http://larrybrownsports.com/wp-content/uploads/2015/02/karl-malone.jpg", password: "abc123", password_confirmation: "abc123")
#User.create(username: "SwoopsMalone23", email: "swoops23@gmail.com", website: "oop23@gmail.com", about: "Just gotta keep puttin the ball in the basket...", img_url: "http://larrybrownsports.com/wp-content/uploads/2015/02/karl-malone.jpg", password: "abc123", password_confirmation: "abc123")
#User.create(username: "ScoopsMalone23", email: "scoops23@gmail.com", website: "oop23@gmail.com", about: "Just gotta keep puttin the ball in the basket...", img_url: "http://larrybrownsports.com/wp-content/uploads/2015/02/karl-malone.jpg", password: "abc123", password_confirmation: "abc123")
#User.create(username: "SloopsMalone23", email: "sloops23@gmail.com", website: "oop23@gmail.com", about: "Just gotta keep puttin the ball in the basket...", img_url: "http://larrybrownsports.com/wp-content/uploads/2015/02/karl-malone.jpg", password: "abc123", password_confirmation: "abc123")
#User.create(username: "QoopsMalone23", email: "qoops23@gmail.com", website: "oop23@gmail.com", about: "Just gotta keep puttin the ball in the basket...", img_url: "http://larrybrownsports.com/wp-content/uploads/2015/02/karl-malone.jpg", password: "abc123", password_confirmation: "abc123")
#User.create(username: "QwoopsMalone23", email: "qwoops23@gmail.com", website: "oop23@gmail.com", about: "Just gotta keep puttin the ball in the basket...", img_url: "http://larrybrownsports.com/wp-content/uploads/2015/02/karl-malone.jpg", password: "abc123", password_confirmation: "abc123")
#User.create(username: "QcoopsMalone23", email: "qcoops23@gmail.com", website: "oop23@gmail.com", about: "Just gotta keep puttin the ball in the basket...", img_url: "http://larrybrownsports.com/wp-content/uploads/2015/02/karl-malone.jpg", password: "abc123", password_confirmation: "abc123")
#
#Track.create(title: "Coops on the town", category: "poetry", user_id: 16)
#Track.create(title: "Coops tells it how it is", category: "stories", user_id: 16)
#Track.create(title: "Coops makes a beat", category: "music", user_id: 16)
#Track.create(title: "Hoops on the town", category: "poetry", user_id: 17)
#Track.create(title: "Hoops tells it how it is", category: "stories", user_id: 17)
#Track.create(title: "Hoops makes a beat", category: "music", user_id: 17)
#Track.create(title: "Swoops on the town", category: "poetry", user_id: 18)
#Track.create(title: "Swoops tells it how it is", category: "stories", user_id: 18)
#Track.create(title: "Swoops makes a beat", category: "music", user_id: 18)
#Track.create(title: "Scoops on the town", category: "poetry", user_id: 19)
#Track.create(title: "Scoops tells it how it is", category: "stories", user_id: 19)
#Track.create(title: "Scoops makes a beat", category: "music", user_id: 19)
#Track.create(title: "Sloops on the town", category: "poetry", user_id: 20)
#Track.create(title: "Sloops tells it how it is", category: "stories", user_id: 20)
#Track.create(title: "Sloops makes a beat", category: "music", user_id: 20)



#  create_table "tracks", force: :cascade do |t|
#    t.string   "type"
#    t.integer  "plays"
#    t.datetime "date_uploaded"
#    t.integer  "user_id"
#    t.datetime "created_at",    null: false
#    t.datetime "updated_at",    null: false
#  end
#
#  add_index "tracks", ["user_id"], name: "index_tracks_on_user_id", using: :btree
#
#  create_table "users", force: :cascade do |t|
#    t.string   "username"
#    t.string   "email"
#    t.string   "password_digest"
#    t.datetime "created_at",      null: false
#    t.datetime "updated_at",      null: false
#  end
#
#  add_foreign_key "tracks", "users"
#end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
