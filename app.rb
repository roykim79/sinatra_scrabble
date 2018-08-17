require 'sinatra'
require 'sinatra/reloader'
also_reload 'lib/**/*.rb'
require './lib/word'

get '/' do
  erb(:input)
end

get '/output' do
  @word = params.fetch('word')
  word = Word.new(@word)
  @score = word.scrabble()
  erb(:output)
end
