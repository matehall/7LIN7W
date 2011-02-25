a=[]
array = a.fill(0,15){|i|i+1}
short_array = []

array.each do |i|
  if (short_array.length()== 4)
    puts short_array
    puts "\n"
    short_array=[]
  else
    short_array.push(i)
  end
end

puts "Second arry using each_slice"

b = (1..16).to_a()
b.each_slice(4){|i|p i}



