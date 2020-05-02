def fizz_buzz(num)
  if num % 15 == 0
    puts "Fizz Buzz"
  elsif num % 3 == 0
    puts "Fizz"
  elsif num % 5 == 0
    puts "Buzz"
  else
    puts num.to_s
  end
end

(1..10).each do |i|
  fizz_buzz(i)
end