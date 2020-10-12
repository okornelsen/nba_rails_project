require "csv"

# PlayerPosition.delete_all
# TeamFan.delete_all
# Arena.delete_all
# Country.delete_all
# Fan.delete_all
# Team.delete_all
Position.delete_all
# Player.delete_all

def load_csv(csvfile)
  filename = File.join(Rails.root, "db", csvfile)
  puts "loading data from: #{filename}"
  dataset = File.read(filename)
  data = CSV.parse(dataset, headers: true)
  puts "loaded #{data.size} rows from CSV file"
  return data
end

positions = load_csv("position.csv")

positions.each do |position|
  puts position["position"]
end
