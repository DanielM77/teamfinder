# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'setting up the default user login'
admin = User.create!(email:'admin@mail.de',password:'geheim',password_confirmation:'geheim')


admin.add_role 'admin'

# Teamtypes and Leagues
team_types = TeamType.create!([{name: 'Herren'},{name: 'A-Junioren'},{name: 'B-Junioren'},{name: 'Frauen'},{name: 'A-Juniorinnen'},{name: 'B-Juniorinnen'}])
team_types.each do |tt|
	puts 'TeamType created: ' << tt.name
end
team_type = TeamType.find_by_name('Herren')
league = team_type.leagues.create!(name: 'Hessenliga', ranking:4)
puts 'League created: ' << league.name

league = team_type.leagues.create!(name: 'Verbandsliga', ranking:5)
puts 'League created: ' << league.name

league = team_type.leagues.create!(name: 'Gruppenliga', ranking:6)
puts 'League created: ' << league.name

league = team_type.leagues.create!(name: 'Kreisoberliga', ranking:7)
puts 'League created: ' << league.name

league = team_type.leagues.create!(name: 'Kreisliga A', ranking:8)
puts 'League created: ' << league.name

league = team_type.leagues.create!(name: 'Kreisliga B', ranking:9)
puts 'League created: ' << league.name

league = team_type.leagues.create!(name: 'Kreisliga C', ranking:10)
puts 'League created: ' << league.name

#Positions
groups = PositionGroup.create!([{name:'Tor'},{name:'Abwehr'},{name:'Mittelfeld'},{name:'Sturm'}])
puts 'PositionGroups created :' << groups.count
group = PositionGroup.find_by_name('Tor')
  position = group.positions.create!(name:'Tor')
  puts 'position created: ' << position.name << '(' << position.position_group.name << ')'

group = PositionGroup.find_by_name('Abwehr')
  position = group.positions.create!(name:'rechte Abwehr')
  puts 'position created: ' << position.name << '(' << position.position_group.name << ')'
  position = group.positions.create!(name:'linke Abwehr')
  puts 'position created: ' << position.name << '(' << position.position_group.name << ')'
  position = group.positions.create!(name:'Innenverteidigung')
  puts 'position created: ' << position.name << '(' << position.position_group.name << ')'
  position = group.positions.create!(name:'Libero')
  puts 'position created: ' << position.name << '(' << position.position_group.name << ')'

group = PositionGroup.find_by_name("Mittelfeld")
  position = group.positions.create!(name:"linkes Mittelfeld")
  puts 'position created: ' << position.name << '(' << position.position_group.name << ')'
  position = group.positions.create!(name:"rechtes Mittelfeld")
  puts 'position created: ' << position.name << '(' << position.position_group.name << ')'
  position = group.positions.create!(name:"zentrales Mitteldfeld")
  puts 'position created: ' << position.name << '(' << position.position_group.name << ')'
  position = group.positions.create!(name:"offensives Mittelfeld")
  puts 'position created: ' << position.name << '(' << position.position_group.name << ')'
  position = group.positions.create!(name:"defensives Mittelfeld")
  puts 'position created: ' << position.name << '(' << position.position_group.name << ')'

group = PositionGroup.find_by_name("Sturm")
  position = group.positions.create!(name:"linker Sturm")
  puts 'position created: ' << position.name << '(' << position.position_group.name << ')'
  position = group.positions.create!(name:"rechter Sturm")
  puts 'position created: ' << position.name << '(' << position.position_group.name << ')'
  position = group.positions.create!(name:"Mittelstuermer")
  puts 'position created: ' << position.name << '(' << position.position_group.name << ')'

# Seasons
  seasons = Season.create!([{name:'Saison 2012/ 2013', year:2013},{name:'Saison 2013/ 2014', year:2014},{name:'Saison 2014/ 2015', year:2015}])


