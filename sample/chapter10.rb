# def greeting
#     puts "おはよう"
#     puts "こんばんは"
# end

# # 普通に実行すると
# greeting #=> おはよう　こんばんは

# # メソッド呼び出し時に適当なブロックをつける このままだと何も変わらない
# greeting do
#     puts "おはよう"
# end
# # => おはよう
# # => こんばんは

# # 渡されたブロックを実行するために、メソッド内でyieldを使う
# def greeting
#     puts "おはよう"
#     yield
#     puts "こんばんは"
# end

# # ブロックをつけずに呼び出すとエラーになる
# # greeting
# #=> おはよう
# #=> LocalJumpError

# # ブロックが渡されたかどうか確認する場合はblock_given?メソッドを使う。このメソッドはブロックが渡されている場合にtrueを返す
# def greeting
#     puts "おはよう"
    
#     if block_given?
#         yield
#     end
#     puts "こんばんは"
# end

# greeting
# #=> おはよう
# #=> こんばんは

# greeting do
#     puts "こんちは"
# end
# #=> おはよう
# #=> こんちは
# #=> こんばんは


# 共通部分をgreeting_commonから呼び出すことで、日本版と英語版のところだけ定義するだけでよくなるDRYの考え方にめった有効
# 日本語版のgreetingメソッド
def greeting_ja(&block)
    texts = ['おはよう','こんちは','こんばんは']
    # ブロックを別のメソッドに引き渡す
    greeting_common(texts, &block)
end

# 英語版
def greeting_en(&block)
  texts = ['good morning', 'hello', 'good evenint']
  greeting_common(texts, &block)
end

# 出力ようの共通メソッド
def greeting_common(texts, &block)
    puts texts[0]
    # ブロックを実行
    puts block.call(texts[1]) #texts[1]が２回呼ばれる
    puts texts[2]
end

# 日本語版のgreetingメソッドを呼び出す
greeting_ja do |text|
    text * 2
end
# => こんちはこんちは

greeting_en do |text|
  text * 2
end



def greeting(proc_1, proc_2, proc_3)
    puts proc_1.call('おはよう')
    puts proc_2.call('こんにちは')
    puts proc_3.call('こんばんは')
end

# greetingメソッドに渡すProcオブジェクトを用意
shuffle_proc = Proc.new{ |text| text.chars.shuffle.join}
repeat_proc = Proc.new{ |text| text * 2 }
question_proc = Proc.new { |text| "#{text}?" }

greeting(shuffle_proc, repeat_proc, question_proc)


add_proc = Proc.new{ |a,b| a.to_i + b.to_i }
# Proc.newは引数が１つまたは３つでも呼び出しが可能
add_proc.call(10) #=> 10
add_proc.call(10, 20, 100) #=> 30

# ラムダの場合
add_lambda = ->(a,b){ a.to_i + b.to_i }

# ラムダは個数について厳密であるため、引数が2個じゃないとエラーになる
# add_lambda.call(10)
# add_lambda.call(10, 20, 30)
