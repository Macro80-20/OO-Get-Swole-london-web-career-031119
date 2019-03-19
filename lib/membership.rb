class Membership
  attr_reader :cost 
  attr_accessor :lifter ,:gym
  @@memberships = []

  def initialize(lifter,gym,cost=50)
    @cost = cost
    @lifter = lifter 
    @gym = gym
    self.class.all << self
  end

  def self.all
  @@memberships
  end

end
