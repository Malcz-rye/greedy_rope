@all_ropes = []
@cost = 0

@all_ropes = ARGV.map(&:to_i)

#ARGV.each do |a|
#  @all_ropes << a
#end

while @all_ropes.length > 1
  rope_one = @all_ropes.delete_at(@all_ropes.index(@all_ropes.max))
  rope_two = @all_ropes.delete_at(@all_ropes.index(@all_ropes.max))
  @cost += rope_one + rope_two + 1
  @all_ropes << rope_one + rope_two
end

puts "Rope Size: #{@all_ropes}"
puts "Cost: #{@cost}"
