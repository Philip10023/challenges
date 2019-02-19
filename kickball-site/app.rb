require "sinatra"
require_relative "models/player"
require_relative "models/team"
require_relative "models/team_data"

set :bind, '0.0.0.0'  # bind to all interfaces

get "/" do
  "<h1>The LACKP Homepage<h1>"
end

get "/teams" do
  @teams = TeamData::ROLL_CALL
  erb :teams
end


get "/teams/:team" do
  @name = params[:team]
  @teams = TeamData::ROLL_CALL
  @team = TeamData::ROLL_CALL[@name.to_sym]
  erb :team
end
