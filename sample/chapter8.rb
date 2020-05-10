# ログ出力ようのメソッドを提供するモジュール
# include---------------
module Loggable
  def log(text)
    puts "[LOG] #{text}"
  end
end

class Product
  # includeでmoduleを呼び出している(部品を呼び出す)
  include Loggable

  def title
    # logメソッドはLoggableモジュールでていぎしたメソッド
    log('title is called')
    'A great movie'
  end
end

class User
  include Loggable

  def name
    log('name is called')
    'Alice'
  end
end

product = Product.new
p product.title #=> [LOG]title is called. A great movie

user = User.new
p user.name #=> [LOG]name is called. Alice

# extend----------------------
module Loggable_extend
  def log(text)
    puts "[LOG] #{text}"
  end
end

class Product_ext
  # Loggableモジュールのメソッドをクラスメソッドとしてミックスインする(クラスの部品にしちゃう)
  extend Loggable_extend

  def self.create_products(name)
    # logメソッドをクラスメソッド内で呼び出す
    # (logメソッド自身もクラスメソッドになっている)
    log('create_products is called')
    'Hoge'
  end
end

p Product_ext.create_products([]) #=> [LOG] create_products is called.

# Productクラスのクラスメソッドとして直接呼び出せる(モジュールなのに！)
Product_ext.log('hello,')