class ArenasController < ApplicationController
  def index
    @arenas = Arena.all.order("name ASC")
  end

  def show
    @arena = Arena.find(params[:id])
  end
end
