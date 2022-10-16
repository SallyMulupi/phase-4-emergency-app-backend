puts "🌱 Seeding ..."
# creates user table
User.create(username:"mary", email: "marytamnai@gmail.com", password: "54321", role: "user")
User.create(username:"Rael", email: "rael43@gmail.com", password: "12345", role: "admin")
User.create(username:"Keith", email: "kei23@gmail.com", password: "54321", role: "user")
User.create(username:"Nameless", email: "Nammy67!@gmail.com", password: "12345", role: "user")
User.create(username:"John", email: "Johnfdv@gmail.com", password: "12345", role: "admin")


# creating Reports
Report.create(title:"Fainted", description:"It happened accidendally",location:"It JuJa", user_id:1)
Report.create(title:"Fire at My Neighbourhood", description:"It happened accidendally",location:"It Kawangware", user_id:2)
Report.create(title:"Fire at My Neighbourhood", description:"It happened accidendally",location:"It Fedha", user_id:3)
Report.create(title:"Fire at My Neighbourhood", description:"It happened accidendally",location:"It Prestige", user_id:4)
Report.create(title:"Fire at My Neighbourhood", description:"It happened accidendally",location:"It JuJa", user_id:5)
Report.create(title:"Fire at My Neighbourhood", description:"It happened accidendally",location:"It JuJa", user_id:5)
Report.create(title:"Fire at My Neighbourhood", description:"It happened accidendally",location:"It JuJa", user_id:4)
Report.create(title:"Fire at My Neighbourhood", description:"It happened accidendally",location:"It JuJa", user_id:3)
Report.create(title:"Fire at My Neighbourhood", description:"It happened accidendally",location:"It JuJa", user_id:2)
Report.create(title:"Fire at My Neighbourhood", description:"It happened accidendally",location:"It JuJa", user_id:1)

puts "✅ Done seeding!"
