# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

fernando = Lifter.new("Fernando", "12kg")
uman = Lifter.new("Uman", '20kg')
virgin = Gym.new("Virgin Active")
puregym = Gym.new('Pure Gym')
# membership1= Membership.new(fernando,puregym)
# membership2 = Membership.new(fernando,virgin)
membership3 = Membership.new(uman,puregym)
fernando.gyms("Virgin active")
Lifter.avg_lift
fernando.total_gym_costs # > 100 
fernando.sign_me_up(puregym,100)
# fernando.memberships
# fernando.gyms
#> membership

binding.pry

puts "Gains!"
