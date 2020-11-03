# README

I. DESCRIPTION

The purpose of this project is to test my knowledge in Ruby on Rails by developing a fully navigable website full of content gathered from multiple data sources. With that assigned it was up to me to choose my content and how I want to go about creating this project.

I chose to focus on a very large interest of mine, that being basketball. I decided to make a website based on the NBA teams and players along with several attached information that comes with those criterion. My main table is driven by the players of the NBA, coming from a data source found here; https://www.kaggle.com/isaienkov/nba2k20-player-dataset (200+ entries)

The relationships the players table has will include the team the player plays for, the position they play, and the country they are from, with data sources found here;
Team: https://www.kaggle.com/nathanlauga/nba-games?select=teams.csv (30 entries) 
Position: Self created (3 entries) Country: https://www.kaggle.com/fernandol/countries-of-the-world (200+ entries)

The relationships the team table has is the associated arenas they play in, and the fans associated with them, with data sources found here;
Arena: https://www.kaggle.com/nathanlauga/nba-games?select=teams.csv (30 entries) 
Fan: Faker-generated (200+ entries)
