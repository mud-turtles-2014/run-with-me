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

2.times do
  User.create(  name: Faker::Name.name,
               username: Faker::Name.first_name,
               email: Faker::Internet.email,
               password: "admin"
               )
end

 Relationship.create(invited: User.find(1).id, inviter: User.find(2).id, pending: false)

 User.find(1).runs.create(time: DateTime.now,
                  location: Faker::Address.zip_code)


