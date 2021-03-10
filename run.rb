# run the code by passing the values of the ropes as parameters
# e.g
# ruby run.rb 1 2 3 4

@cost_biggest = 0
@cost_smallest = 0

@all_ropes_biggest = ARGV.map(&:to_i)
@all_ropes_smallest = ARGV.map(&:to_i)

while @all_ropes_biggest.length > 1
  rope_one = @all_ropes_biggest.delete_at(@all_ropes_biggest.index(@all_ropes_biggest.max))
  rope_two = @all_ropes_biggest.delete_at(@all_ropes_biggest.index(@all_ropes_biggest.max))
  @cost_biggest += rope_one + rope_two + 1
  @all_ropes_biggest << rope_one + rope_two
end

while @all_ropes_smallest.length > 1
  rope_one = @all_ropes_smallest.delete_at(@all_ropes_smallest.index(@all_ropes_smallest.min))
  rope_two = @all_ropes_smallest.delete_at(@all_ropes_smallest.index(@all_ropes_smallest.min))
  @cost_smallest += rope_one + rope_two + 1
  @all_ropes_smallest << rope_one + rope_two
end

puts 'Prioritize Biggest Ropes:'
puts "Rope Size: #{@all_ropes_biggest}"
puts "Cost: #{@cost_biggest}"
puts
puts 'Prioritize Smallest Ropes:'
puts "Rope Size: #{@all_ropes_smallest}"
puts "Cost: #{@cost_smallest}"
