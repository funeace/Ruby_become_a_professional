class User
    attr_accessor :name
    
    def initialize(name)
        @name = name
    end

    def hello
        # selfなしでnameメソッドを呼ぶ
        "Hello, I am #{name}"
    end

    def hi
        # selfつきでnameメソッドを呼ぶ
        "Hi, I am #{self.name}"
    end

    def my_name
        # 直接インスタンス変数の@nameにアクセスする
        "My name is #{@name}"
    end
end

user = User.new('Alice')
p user.hello #=> “Hello, I am Alice
p user.hi #=> “Hi I am Alice”
p user.my_name #=> “My name is Alice"


class Product
    attr_reader :name, :price
    def initialize(name, price)
        @name = name
        @price = price
    end

    # 金額を整形クラスメソッド
    def self.format_price(price)
        "#{price}円"
    end

    def to_s
        # インスタンスメソッドからクラスメソッドを呼び出す
        # クラス名 + メソッド名
        formatted_price = Product.format_price(price)
        "name: #{name}, price: #{formatted_price}"
    end
end

product = Product.new('A great movie', 1000)

p Product.format_price(2000)
p product.to_s

# -------------------------------------
class Product2
    attr_reader :name, :price

    def initialize(name, price)
        @name = name
        @price = price
    end
end


product = Product2.new('A great movie' , 1000)
product.name #=> “A great movie"
product.price #=> 1000

class DVD < Product2
    attr_reader :running_time
    def initialize(name,price,running_time)
        super(name,price)
        @running_time = running_time
    end
end

dvd = DVD.new('A great movie', 1000, 120)
p dvd.name    #=> ‘A great movie'
p dvd.price    #=> 1000
p dvd.running_time #=> 120
