require('rspec')
require('player')
require('pry')

describe('#player') do
  it("does some stuff with objects, modules and arrays") do
    dan = Player.new("Dan", 12, 5)
    elrey = Player.new("Elrey", 11, 6)
    array = []
    array.push(dan.skip)
    binding.pry
    array.push(elrey.whos_turn(dan.name))
    expect(array).to(eq(['not your turn', "it is Dan's turn"]))
  end
end
