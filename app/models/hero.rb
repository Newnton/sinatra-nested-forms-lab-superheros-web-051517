class Hero
  attr_accessor :name, :powers, :biography
  @@all = []

  def initialize(params)
    @name = params[:name]
    @powers = params[:powers]
    @biography = params[:biography]
    @@all << self
  end

  def self.all
    @@all
  end
end
