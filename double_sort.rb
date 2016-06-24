=begin
Examples (input => output):

["sugar", "butter", "egg"] => ["butter", "egg", "sugar"]
["12", "10", "3", "4", "1"] => ["1", "3", "4", "10", "12"]
["16", "8", "4", "salt", "baking", "soda"] => ["4", "8", "16", "baking", "salt", "soda"]
["2", "4", "banana", "1", "vanilla", "flour"] => ["1", "2", "banana", "4", "flour", "vanilla"]
=end

require 'pry'

# http://stackoverflow.com/a/5661695/3837223
def is_number?(string)
  true if Float(string) rescue false
end

def double_sort(aList)
  positions = aList.map { |elem| is_number?(elem)}
  numeric_string = aList.select { |elem| !is_number?(elem) }.sort
  regular_string = aList.select { |elem| is_number?(elem) }.sort

  puts positions
  puts numeric_string
  puts regular_string

  positions.map! do |elem|
    if is_number?(elem)
      numeric_string.shift
    else
      regular_string.shift
    end
  end
end

aList = ["2", "4", "banana", "1", "vanilla", "flour"]
double_sort(aList)

binding.pry
