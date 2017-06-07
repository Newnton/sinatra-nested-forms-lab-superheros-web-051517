class Team
  attr_accessor :name, :motto, :heroes
  def initialize(params, heroes)
    @heroes = heroes
    @name = params[:name]
    @motto = params[:motto]
  end
end
