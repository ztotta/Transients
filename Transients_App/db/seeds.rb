User.destroy_all
Track.destroy_all

User.create(username: "CoopsMalone23", email: "coops23@gmail.com", password_digest: "abc123")
User.create(username: "HoopsMalone23", email: "hoops23@gmail.com", password_digest: "abc124")
User.create(username: "SwoopsMalone23", email: "swoops23@gmail.com", password_digest: "abc125")
User.create(username: "ScoopsMalone23", email: "scoops23@gmail.com", password_digest: "abc126")
User.create(username: "SloopsMalone23", email: "sloops23@gmail.com", password_digest: "abc127")

Track.create(title: "Coops on the town", category: "poetry", user_id: 16)
Track.create(title: "Coops tells it how it is", category: "stories", user_id: 16)
Track.create(title: "Coops makes a beat", category: "music", user_id: 16)
Track.create(title: "Hoops on the town", category: "poetry", user_id: 17)
Track.create(title: "Hoops tells it how it is", category: "stories", user_id: 17)
Track.create(title: "Hoops makes a beat", category: "music", user_id: 17)
Track.create(title: "Swoops on the town", category: "poetry", user_id: 18)
Track.create(title: "Swoops tells it how it is", category: "stories", user_id: 18)
Track.create(title: "Swoops makes a beat", category: "music", user_id: 18)
Track.create(title: "Scoops on the town", category: "poetry", user_id: 19)
Track.create(title: "Scoops tells it how it is", category: "stories", user_id: 19)
Track.create(title: "Scoops makes a beat", category: "music", user_id: 19)
Track.create(title: "Sloops on the town", category: "poetry", user_id: 20)
Track.create(title: "Sloops tells it how it is", category: "stories", user_id: 20)
Track.create(title: "Sloops makes a beat", category: "music", user_id: 20)



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
