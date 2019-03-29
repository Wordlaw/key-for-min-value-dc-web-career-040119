# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value
require 'pry'

ikea = {:chair => 25, :table => 85, :mattress => 450}

def key_for_min_value(name_hash)
  lowest_value = nil
  lowest_key = nil
  name_hash.each do |key|
    if lowest_value == nil || lowest_value > key[1]
      lowest_value = key[1]
      lowest_key = key[0]
    end
  end
  lowest_key
end

key_for_min_value(ikea)
