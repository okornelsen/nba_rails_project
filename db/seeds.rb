require "csv"

# PlayerPosition.delete_all
Player.delete_all
TeamFan.delete_all
Team.delete_all
Arena.delete_all
Country.delete_all
Fan.delete_all
Position.delete_all

def load_csv(csvfile)
  filename = File.join(Rails.root, "db", csvfile)
  dataset = File.read(filename)
  data = CSV.parse(dataset, headers: true)
  data
end

positions = load_csv("position.csv")
countries = load_csv("country.csv")
arenas = load_csv("arena.csv")
teams = load_csv("team.csv")
players = load_csv("player.csv")

# LOAD ARENAS INTO DB
arenas.each do |arena|
  Arena.create(
    name:     arena["name"],
    location: arena["location"]
  )
end

# LOAD POSITIONS INTO DB
positions.each do |position|
  Position.create(
    position: position["position"]
  )
end

# LOAD COUNTRIES INTO DB
countries.each do |country|
  Country.create(
    name:       country["name"],
    region:     country["region"],
    population: country["population"]
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

# LOAD PLAYERS INTO DB BY WAY OF COUNTRY_ID
players.each do |player|
  country = Country.find_by(name: player["country"])
  next if player["team"].nil?

  team = Team.find_by(name: player["team"])
  if country.valid?
    player_to_create = country.players.create(
      full_Name: player["name"],
      rating:    player["rating"],
      jersey_No: player["jersey"],
      birthday:  player["birthday"],
      height:    player["height"],
      weight:    player["weight"],
      salary:    player["salary"],
      team_id:   team.id
    )
  else
    puts "Error with #{player['name']}"
  end
end
