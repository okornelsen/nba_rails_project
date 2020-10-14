module PlayersHelper
  def team_color(team)
    if ["Hornets", "Mavericks", "Nuggets", "Pacers", "Pelicans", "Timberwolves", "Jazz", "Wizards"].include? team
      "$blue"
    elsif ["Warriors", "Grizzlies", "Knicks", "Thunder", "Magic", "76ers"].include? team
      "$cyan"
    elsif ["Hawks", "Bulls", "Pistons", "Rockets", "Clippers", "Heat", "Trail Blazers", "Raptors", "Cavaliers"].include? team
      "$red"
    elsif ["Nets", "Spurs"].include? team
      "$black"
    elsif ["Celtics", "Bucks"].include? team
      "green"
    elsif ["Lakers", "Suns", "Kings"].include? team
      "#ffb3b3"
    end
  end
end
