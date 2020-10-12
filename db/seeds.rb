require "csv"

# PlayerPosition.delete_all
TeamFan.delete_all
Team.delete_all
Arena.delete_all
# Country.delete_all
Fan.delete_all
# Position.delete_all
# Player.delete_all

def load_csv(csvfile)
  filename = File.join(Rails.root, "db", csvfile)
  dataset = File.read(filename)
  data = CSV.parse(dataset, headers: true)
  data
end

# positions = load_csv("position.csv")
arenas = load_csv("arena.csv")
teams = load_csv("team.csv")

# LOAD ARENAS INTO DB
arenas.each do |arena|
  Arena.create(
    name:     arena["name"],
    location: arena["location"]
  )
end

# LOAD TEAMS INTO DB BY WAY OF ARENA_ID
teams.each do |team|
  arena = Arena.find_by(name: team["arena"])
  if arena.valid?
    team_to_create = arena.teams.create(
      city:            team["city"],
      name:            team["name"],
      abbreviation:    team["abbreviation"],
      general_Manager: team["general_manager"],
      head_Coach:      team["head_coach"]
    )

    unless team_to_create.valid?
      puts "Could not create team: #{team['name']}"
      next
    end

    # LOAD FANS INTO DB BY WAY OF TEAM_ID AND FAKER
    rand(1..10).times do
      fan = Fan.new(full_Name: Faker::Name.name)
      fan.save

      TeamFan.create(
        team: team_to_create,
        fan:  fan
      )
    end

  else
    puts "Error with #{team['name']}"
  end
end

puts Fan.count
