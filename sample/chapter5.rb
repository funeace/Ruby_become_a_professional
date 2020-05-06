currencies = {'japan' => 'yen','us' =>'dollar','india' => 'rupee'}
currencies['japan'] = '円'

# ブロック引数が2つあれば、キーと値の組み合わせを順に取り出すことができる
currencies.each do |key,value|
  "#{key} : #{value}"
end

# ブロック引数を１つにすると、配列になる
currencies.each do |key_value|
  key = key_value[0]
  value = key_value[1]
  "#{key} : #{value}"
end

# 要素数を調べることができる
currencies.length


h = {us: 'doller', india: 'rupee'}

# aとbは同義
a = {japan: 'yen'}.merge(h)
b = {japan: 'yen', **h}

a

a.has_key?(:japan)
a.has_value?('yen')


def buy_burger(options = {},menu)
  a = options.to_a
  a.to_h
end

buy_burger({drink: true,potato: true},:fish)

# %sでシンボルになる→出力 :"ruby is fun"
p %s!ruby is fun!

# %iでシンボルを扱う配列になる→出力 [:apple, :orange, :melon]
p %i(apple orange melon)