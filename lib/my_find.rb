require 'pry'

def my_find(collection)
  i = 0 
  while i < collection.length 
    if yield(collection[i])
      return collection[1]
    end 
    i += 1 
  end 
  
end

my_find([1,2,3]){|i| i % 3 == 0 and i % 5 == 0}