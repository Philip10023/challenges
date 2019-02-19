require_relative "./team_data"

  class Team
    attr_reader :teamnames
  def initialize(teamnames)
    @teamnames = teamnames
  end
end
