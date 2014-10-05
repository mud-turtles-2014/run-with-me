# module Seed
#   def self.createUsers(numb_users)
#     numb_users.times do
#       User.create(  name: Faker::Name.name,
#                     username: Faker::Name.first_name,
#                     email: Faker::Internet.email,
#                     password: "admin"
#                   )
#     end
#   end

#   def self.createRelationships()
#     Relationship.create(invited: 2, inviter: 1, pending: false)
#   end

#   def self.createRuns(numb_runs)
#     # users = User.all
#     # users.each do |user|
#       planned_run = user.runs.create(time: DateTime.now,
#                                      location: Faker::Address.zip_code)

#       u_friends = user.relationships

#       u_friends.each do |friend|
#         Pl

#         friend.runs.create(time: DateTime.now, location: Faker::Address.zip_code)
#       end
#     end
#   end
# end

  User.create(  name: "admin",
               username: "admin",
               email: Faker::Internet.email,
               password: "admin"
               )

  User.create(  name: "admin1",
               username: "admin1",
               email: Faker::Internet.email,
               password: "admin1"
               )

 Relationship.create(invited_id: User.find(1).id, inviter_id: User.find(2).id, pending: false, confirmed: true)

 User.find(1).runs.create(time: DateTime.new(2001, 2, 3),
                  location: "Central Park")

 User.find(2).runs.create(time: DateTime.new(2001, 2, 3),
                  location: "Central Park")



