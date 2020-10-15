class ApplicationController < ActionController::Base
  def search
    wildcard_search = "%#{params[:keywords]}%"
    @players = Player.where("full_Name LIKE ?", wildcard_search)
    @teams = Team.where("name LIKE ? OR city LIKE ?", wildcard_search, wildcard_search)
    @countries = Country.where("name LIKE ?", wildcard_search)
    @arenas = Arena.where("name LIKE ?", wildcard_search)
  end
end
