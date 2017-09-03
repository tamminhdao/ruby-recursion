#!/usr/bin/env ruby

def foobar(rocks, heaviest=0)
  puts rocks.inspect
  current_rock = rocks.shift
  puts current_rock

  heaviest = current_rock if current_rock > heaviest
  puts heaviest
  return heaviest if rocks.empty?

  foobar(rocks, heaviest)
end


lol = [1, 6, 3, 6, 4, 10, 54, 3, 2, 8]
puts foobar(lol)

def compare_rock(rocks)
  heaviest = 0
  rocks.each { |r| heaviest = r if r > heaviest }
  heaviest
end

# puts compare_rock(lol)
