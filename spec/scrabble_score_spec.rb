require('rspec')
require('scrabble_score')

describe('scrabble_score') do

  it('returns the numerical value of a letter') do
    expect("w".scrabble_score()).to(eq(4))
  end

end
