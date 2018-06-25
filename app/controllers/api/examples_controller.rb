class Api::ExamplesController < ApplicationController
  def fortune_action
    puts "Your fortune is:"
    fortunes = ["Your day is about to get better, just believe.", "Someone loves you...do you feel the love?", "You are about to win something, what it is i don't know. I'm not from the future."]
    @message = fortunes.sample
    render "fortune_action.json.jbuilder"
  end

  def lotto_action
    lotto_numbers = []
    6.times do
      lotto_numbers << rand(1..60)
    end
    @lucky_numbers = lotto_numbers
    render "lotto_action.json.jbuilder"
  end

  def beer_action
    beers = 99
    # 99.times do
    #   puts "#{beers} bottle of beer on the wall, #{beers} bottles of beer."
    #   beers -= 1
    #   puts "Take one down, pass it around, #{beers} bottles of beer on the wall."
    # end
    @beer = "lyrics"
    render "beer_action.json.jbuilder"
  end
end
