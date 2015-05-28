require('rspec')
require('scrabble_score')
require('pry')

describe('scrabble_score') do

  it('returns the numerical value of a letter') do
    expect("w".scrabble_score()).to(eq(4))
  end

  it('returns the numerical value of multiple letters') do
    expect("happy".scrabble_score).to(eq(15))
  end

end
