class Ticket
  # 外部（Gateクラス）から呼び出せるようにする
  attr_reader :fare, :stamped_at

  def initialize(fare)
    @fare = fare
  end

  # Gateクラスのenterメソッドから受け取った値をインスタンス変数（@stamped_at）に格納
  def stamp(name)
    @stamped_at = name
  end
end