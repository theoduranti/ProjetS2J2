array=(1...1000)

incrementator=0

array.each { |num| incrementator+=num 
if num%3 == 0 || num%5 == 0 
end
}

puts incrementator
