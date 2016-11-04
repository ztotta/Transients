require 'faker'

User.destroy_all
Track.destroy_all

30.times do ||
   
x = ::Faker::Internet.user_name
y = ::Faker::Internet.email
z = ::Faker::Internet.password(8)
a = ::Faker::Internet.url #website
b = ::Faker::Lorem.sentence #about
c = ::Faker::Avatar.image #img_url
    
User.create({username: x, email: y, password: z, password_confirmation: z, website: a, about: b, img_url: c})    
    
end

10.times do ||
    30.times do |i|

    id = User.first.id + i
    x = Faker::Hipster.words(2) #title
    y = ::Faker::Number.between(0, 100000) #plays
    z = ["music", "stories", "poetry", "gratitude", "wishes", "rants"].sample #category
    a = ::Faker::Internet.url #website
    b = ::Faker::Lorem.paragraph #about
    c = ["< 30 sec", "< 1 min", "< 3 min", "< 10 min", "> 10 min"].sample #length

    Track.create({user_id: id, plays: y, title: x, category: z, track_url: a, length: c})    

    end
end

User.create({username: "ztotta", email: "ztotta@gmail.com", password: "abc123", password_confirmation: "abc123", website: "github.com/ztotta", about: "Just gotta keep puttin the ball in the basket...", img_url: "https://media.licdn.com/mpr/mpr/shrinknp_200_200/p/1/005/038/08e/1896d4c.jpg"})
Track.create({user_id: User.last.id, plays: 720, title: "Whistlin' 'n' Hootin'", category: "music", track_url: "https://www.youtube.com/watch?v=dQw4w9WgXcQ", length: 101})   