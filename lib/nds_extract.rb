$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

#binding.pry
def gross_for_director(director_data)
  gross = 0
  movie_index = 0
  while movie_index < director_data[:movies].length do
    gross += director_data[:movies][movie_index][:worldwide_gross]
    movie_index += 1
  end
  gross
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  director_index = 0
  while director_index < nds.length do
    director_name = nds[director_index][:name]
    result[director_name] = gross_for_director(nds[director_index])
    director_index += 1
  end
  result
end