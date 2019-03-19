class Gym
  attr_reader :name

    @@gyms = []
  def initialize(name)
    @name = name
    self.class.all << self 
  end

  def self.all 
    @@gyms
  end

  
end
