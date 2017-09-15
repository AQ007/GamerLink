# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username:"Samuel Tully", email:"Samuel@gmail.com", password:"admin")
User.create(username:"John Wayne", email:"johnwayne@gmail.com", password:"12345")
User.create(username:"PK Banks", email:"pkbanks@gmail.com", password:"1241245245")
User.create(username:"Lewis Hamilton", email:"lewishamilton@gmail.com", password:"supernecryption")
User.create(username:"Sebastian Vettel", email:"sebastianvettel@gmail.com", password:"massiveanal")
User.create(username:"Valtteri Bottas", email:"valtteri@gmail.com", password:"thebigD")
User.create(username:"Daniel Ricciardo", email:"danielricciardo@gmail.com", password:"thesmallD")
User.create(username:"Henry Arbolaez", email:"henryarbolaez@gmail.com", password:"thedoubleDD")

Tournament.create(name:"DoubleDees")
Tournament.create(name:"LargeChestnuts")
Tournament.create(name:"WildGuns")
Tournament.create(name:"SwingingMelons")

t1 = Tournament.find_by(name:"DoubleDees")
t2 = Tournament.find_by(name:"LargeChestnuts")
t3 = Tournament.find_by(name:"WildGuns")
t4 = Tournament.find_by(name:"SwingingMelons")

t1.users << User.find_by(username:"Samuel Tully")
t1.users << User.find_by(username:"Henry Arbolaez")
t1.users << User.find_by(username:"Daniel Ricciardo")
t1.users << User.find_by(username:"Valtteri Bottas")

t2.users << User.find_by(username:"Samuel Tully")
t2.users << User.find_by(username:"John Wayne")
t2.users << User.find_by(username:"PK Banks")
t2.users << User.find_by(username:"Lewis Hamilton")

t3.users << User.find_by(username:"Samuel Tully")
t3.users << User.find_by(username:"Sebastian Vettel")
t3.users << User.find_by(username:"PK Banks")
t3.users << User.find_by(username:"Lewis Hamilton")

t4.users << User.find_by(username:"Samuel Tully")
t4.users << User.find_by(username:"John Wayne")
t4.users << User.find_by(username:"Sebastian Vettel")
t4.users << User.find_by(username:"PK Banks")



# g1 = Game.new(name:"WoW")
# g2 = Game.new(name:"Call of Duty")
# g3 = Game.new(name:"Fifa")
# g4 = Game.new(name:"Madden")
# g5 = Game.new(name:"Halo")
