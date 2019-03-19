class Lifter
  attr_reader :name, :lift_total

  @@lifters = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    # same as Person.all << self . so if the variable lifters change I only need to change whats inside self. all
   self.class.all << self 
  end

#> list of all the lifters  
  def self.all 
    @@lifters
  end

  def memberships
    Membership.all.select do
      |id| id.lifter.name == @name
     end 
  end

  def gyms(name)
    memberships.collect do  
     |x| if x.gym.name == name
    return x.gym
      end
    end
  end

  def self.avg_lift
    arr_total = all.map do |x| x.lift_total.to_i 
    end
    avg_lift = arr_total.sum / arr_total.count 
  end

def total_gym_costs
  total_cost = memberships.map {|x| x.cost }.sum
end

def sign_me_up (gym,cost)
 Membership.new(self,gym,cost)
end

end
