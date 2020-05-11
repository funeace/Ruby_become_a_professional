puts "Start."
module Greeter
    def hello
        'hello'
    end
end

# 例外処理を組み込んで例外に対処
begin
    # 本来ならばここでエラーになる
    greeter = Greeter.new
rescue
    puts "例外が発生したが、このまま続行"
end

# 例外処理を組み込んだので、最後まで実行
puts "end"



begin
    1/0
rescue => e
    puts "エラークラス: #{e.class} "
    puts "エラーメッセージ : #{e.message} "
    puts "バックトレース----"
    puts e.backtrace
    puts "-------"
end


retry_count = 0
begin
    puts "処理を開始します."
    1/0
rescue 
    retry_count += 1
    if retry_count <= 3
        puts "retryします(#{retry_count}回目)"
        retry
    else
        puts "retryに失敗しました"
    end
end


def currency_of(country)
    case country
    when :japan
        "yen"
    when :us
        "dollar"
    when :india
        "rupee"
    else
        # 意図的に例外を発生させる
        raise ArgumentError,"無効な国名です #{country}"
    end
end

currency_of(:japan) #=> “yen" 
currency_of(:italy) #=> “RuntimeError 無効な国名です"