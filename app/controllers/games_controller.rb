require 'json'
require 'open-uri'

class GamesController < ApplicationController
  def new
    @letters = Array.new(10) { ('A'..'Z').to_a.sample }
  end

  def score
 # if a letter isn't present into the grid, puts "sorry but your word can't be built out of "
 # if the word isn't an english word "sorry but your word isn't english"
 # else puts "congrats"
   @answer = params[:word]
   if @answer
    puts "sorry but #{@answer} can't be built out of #{@letters} "
    elsif @answer == english_word?(@answer)
    puts "sorry but #{@answer} isn't english"
    else
    puts "congratulations !"
    end
  end
end

def english_word?(word)
  response = open("https://wagon-dictionary.herokuapp.com/#{@answer}")
end
