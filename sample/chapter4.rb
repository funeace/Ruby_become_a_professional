a = [1]
b = [2,3]

puts a.concat(b)

a = [1,2,3,4,5]
b = [3,4,5]

p a | b 

p a - b

p a & b


require 'set'
  a = Set.new([1,2,3])
  b = Set.new([3,4,5])
  a | b 

a = []
b =[2,3]
p a.push(1)
p a.push(b)
p  a.push(*b)


# 可変長で指定できる
def greeting(*names)
  "#{names.join('と')}、こんにちは！"
end

p greeting("田中","鈴木","山田")

p %w!apple melon orange!

p a = Array.new(5,"default")

p a = Array.new(10){|n| n % 3 + 1}


fruits = ['apple','orange','melon']

p fruits.map.with_index{|fruit,i| "#{i}: #{fruit}"}

dimentions = [[10,20],[30,40],[50,60]]

areas = []
dimentions.map do |length,width|
  areas << length * width
end

p areas

a = []

p 10.upto(14){|n| a << n}
p a
p 14.downto(10){|n| a << n}

p a

a = []
1.step(10,2){|n| a << n}

10.step(1,-2){|n| a << n }

p a
a = []

while a.size < 5
  a << 1
end

p a

a = []
while a.size < 5 do a << 1 end
  p a


a = []

begin 
  a << 1
end while false

p a

a = [10,20,30,40,50]
until a.size <= 3
  a.delete_at(-1)
end

p a

numbers = [1,2,3,4]
sum = 0
for n in numbers
  p sum += n
end

p sum