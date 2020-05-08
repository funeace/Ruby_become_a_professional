# 仕様
# * Gateクラスのenterメソッドは引数として渡された切符(Ticket)に自分の駅名を保存する
# * Ticketクラスにstampというメソッドを用意する。このメソッドに駅名を渡すとその駅名がTicketクラスのインスタンスに保持される
# * 乗車駅を取得する場合はTicketクラスのstamped_atメソッドを使う
# * Gateクラスのexitメソッドは、引数として渡されたコップ(Ticket)から運賃(fare)と乗車駅を取得する
# * exitメソッドではさらに乗車駅と自分の駅名から運賃を割り出す。運賃が足りていればtrueを、そうでなければfalseを返す


class Gate
  STATIONS = [:umeda, :juso, :mikuni]
  FARES = [150, 190]

  # @nameには駅名が入る
  def initialize(name)
    @name = name
  end

  # 入場した駅をticketクラスのstampメソッドに渡す
  def enter(ticket)
    ticket.stamp(@name)
  end

  # 料金の計算を行うメソッド
  def calc_fare(ticket)
    from = STATIONS.index(ticket.stamped_at)
    to = STATIONS.index(@name)
    distance = to - from
    FARES[distance - 1]
  end

  def exit(ticket)
    fare = calc_fare(ticket)
    fare <= ticket.fare
  end
end