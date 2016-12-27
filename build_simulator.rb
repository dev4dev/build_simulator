## Dummy build simulator

puts "Starting building process of raccoon..."
intervals_range = (10..20).to_a
chosen_interval = intervals_range.sample

is_fat = (ENV['IS_FAT'] || 0) ? "Fat" : "Skinny"
color = ENV['COLOR'] || 'Brown'

puts "Assembling [#{is_fat}, #{color}] raccoon for #{chosen_interval} seconds..."
$stdout.flush
sleep chosen_interval

error_possibility = Random.new.rand(2.0)
if error_possibility > 1.5
   fail "Error! Got some shiz!" 
end

puts "Success raccoon!"
