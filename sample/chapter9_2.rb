require 'date'

def to_date(string)
  # 文字列のパースを試みる
  Date.parse(string) rescue nil
end

# パース可能な文字列を渡す
p to_date('2017-01-01')

# パース不可能な文字列を渡す
p to_date('abcdef')


begin
  1/0
rescue => e
  puts "#{e.class} #{e.message}"
  puts e.backtrace
end
#=> ZeroDivisionError divided by 0

# 組み込み変数の$!と$@に格納された例外処理を使う
begin
  1/0
rescue
  puts "#{$!.class} #{$!.message}"
  puts $@
end

#=> ZeroDivisionError

def fizz_buzz(n)
    if n % 15 == 0
      'Fizz buzz'
    elsif n % 3 == 0
      'Fizz'
    elsif n % 5 == 0
      'Buzz'
    else
      n.to_s
    end
rescue => e
  puts "[LOG]エラーが発生しました: #{e.class} #{e.message}"
  raise
end

fizz_buzz(nil)