require 'open-uri'
require 'json'

class GamesController < ApplicationController
  def new
   @letters = (0...10).map { ('a'..'z').to_a[rand(26)] }


  end

  def score
    @word = params[:word]
    @letters = params[:letters]
    @result = exist

  end

  private

  def exist
    url = "https://wagon-dictionary.herokuapp.com/#{@word}"
    exist = open(url).read
    search = JSON.parse(exist)
    return "#{search["found"]}"
  end

  def match
  end

  def calcul
  end




end
