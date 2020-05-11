class Tempo
  include Comparable

  attr_reader :bpm

  def initialize(bpm)
    @bpm = bpm
  end

  def <=>(other)
    if other.is_a?(Tempo)
      bpm <=> other.bpm
    else
      nil
    end
  end

  def inspect
    "#{bom}bpm"
  end
end

t_120 = Tempo.new(120)
t_180 = Tempo.new(180)

p t_120 > t_180
p t_120 <= t_180
p t_120 == t_180


module Baseball
    class Second
      attr_reader :player
        def initialize(player, uniform_number)
            @player = player
            @uniform_number = uniform_number
        end
    end
end

module Clock
    class Second
        def initialize(digits)
            @digits = digits
        end
    end
end

p bb = Baseball::Second.new('Alice',13)
p bb.player
p Clock::Second.new(13)


module Loggable
  def log(text)
    puts "[LOG] #{text}"
  end

  module_function :log
end

# モジュールの特異メソッドとしてlogメソッドを呼び出す
Loggable.log('Hello.') #=> [LOG] Hello

# Loggableモジュールをincludeしたクラスを定義
class Product
  include Loggable

  def title
    # includeしたLoggableモジュールのlogメソッドを呼び出す
    log('title is called')
    'A great movie'
  end
end

# ミックス員してlogメソッドを呼び出す
product = Product.new
product.title
#=> [LOG]title is called
# 'A great movie'
