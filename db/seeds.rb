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

team_types = TeamType.create!([{name: 'Herren'},{name: 'A-Junioren'},{name: 'B-Junioren'},{name: 'Frauen'},{name: 'A-Juniorinnen'},{name: 'B-Juniorinnen'}])
team_types.each do |tt|
	puts 'TeamType created: ' << tt.name
end
team_type = TeamType.find_by_name('Herren')
league_type = team_type.league_types.create!(name: 'Hessenliga', ranking:4)
puts 'LeagueType created: ' << league_type.name
	area = league_type.areas.create!(name:'Hessen')
	puts 'Area created: ' << area.name

league_type = team_type.league_types.create!(name: 'Verbandsliga', ranking:5)
puts 'LeagueType created: ' << league_type.name
	area = league_type.areas.create!(name:'Hessen')
	puts 'Area created: ' << area.name
		league = area.leagues.create!(name:'Verbandsliga Gruppe Mitte')
		puts 'League created: ' << league.name
		league = area.leagues.create!(name:'Verbandsliga Gruppe Nord')
		puts 'League created: ' << league.name
		league = area.leagues.create!(name:'Verbandsliga Gruppe Sued')
		puts 'League created: ' << league.name

league_type = team_type.league_types.create!(name: 'Gruppenliga', ranking:6)
puts 'LeagueType created: ' << league_type.name
	area = league_type.areas.create!(name:'Region Wiesbaden')
	puts 'Area created: ' << area.name
	area.leagues.create!(name:'Gruppenliga Wiesbaden')
	puts 'League created: ' << league.name


league_type = team_type.league_types.create!(name: 'Kreisoberliga', ranking:7)
puts 'LeagueType created: ' << league_type.name
	area = league_type.areas.create!(name:'Kreis Limburg-Weilburg')
	puts 'Area created: ' << area.name
	league = area.leagues.create!(name:'Kreisoberliga Limburg-Weilburg')
	puts 'League created: ' << league.name

league_type = team_type.league_types.create!(name: 'Kreisliga A', ranking:8)
puts 'LeagueType created: ' << league_type.name
	area = league_type.areas.create!(name:'Kreis Limburg-Weilburg')
	puts 'Area created: ' << area.name
	league = area.leagues.create!(name:'Kreisliga A Limburg-Weilburg')
	puts 'League created: ' << league.name

league_type = team_type.league_types.create!(name: 'Kreisliga B', ranking:9)
puts 'LeagueType created: ' << league_type.name
	area = league_type.areas.create!(name:'Kreis Limburg-Weilburg')
	puts 'Area created: ' << area.name
	league = area.leagues.create!(name:'Kreisliga B Limburg-Weilburg')
	puts 'League created: ' << league.name

league_type = team_type.league_types.create!(name: 'Kreisliga C', ranking:10)
puts 'LeagueType created: ' << league_type.name
	area = league_type.areas.create!(name:'Kreis Limburg-Weilburg')
	puts 'Area created: ' << area.name
	league = area.leagues.create!(name:'Kreisliga C Limburg-Weilburg')
	puts 'League created: ' << league.name





