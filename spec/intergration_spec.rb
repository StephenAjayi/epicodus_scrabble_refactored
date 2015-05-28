require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the scrabble score path', {:type=>:feature}) do
  it("processes the user entry and return the scrabble score ") do
    visit('/')
    fill_in("scrabble_word", :with => "happy")
    click_button('Score It!')
    expect(page).to have_content("Your score is 15 ")
  end
end
