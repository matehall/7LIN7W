
line_number  = 0
IO.foreach(ARGV[0]) do |line|
  line_number+=1
  if line=~/ruby/
    puts "#{line_number} #{line}"
  end
end
