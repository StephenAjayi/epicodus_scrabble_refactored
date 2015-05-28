require('sinatra')
require('sinatra/reloader')
require('./lib/scrabble_score')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/success') do
  scrabble_word = params.fetch('scrabble_word')
  @scrabble_score = scrabble_word.scrabble_score
  erb(:success)
end
