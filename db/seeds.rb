# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'setting up the default user login'
admin = User.create!(email:'admin@mail.de',password:'geheim',password_confirmation:'geheim')
puts 'admin created ' << admin.email
club_member = User.create!(email:'club_member@mail.de',password:'geheim',password_confirmation:'geheim')
puts 'club_member created ' << club_member.email
club_superuser = User.create!(email:'club_superuser@mail.de',password:'geheim',password_confirmation:'geheim')
puts 'club_superuser created ' << club_superuser.email
player = User.create!(email:'player@mail.de',password:'geheim',password_confirmation:'geheim')
puts 'player created ' << player.email
trainer = User.create!(email:'trainer@mail.de',password:'geheim',password_confirmation:'geheim')
puts 'trainer created ' << trainer.email

admin.add_role 'admin'
club_member.add_role 'club_member'
club_superuser.add_role 'super_user'
player.add_role 'player'
trainer.add_role 'trainer'