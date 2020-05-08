# Userクラスを定義
class User
    # 「attr_」はクラスの外から呼び出す時の権限
    attr_reader :first_name, :last_name, :age

    def initialize(first_name, last_name, age)
        @first_name = first_name
        @last_name = last_name
        @age = age
    end

    # 氏名を作成するメソッド
    def full_name
        "#{first_name} #{last_name}"
    end
end

# ユーザのデータを作成する
# User.newを行うことでクラスのinitialize（初期設定)に飛ぶ
users = []
users << User.new('Alice','Bob', 20)
users << User.new('Bob', 'Python', 30)

# ユーザのデータを表示する
users.each do |user|
 puts "氏名: #{user.full_name}、年齢: #{user.age}"
end


class User2
    def initialize(name)
        @name = name
    end

    # self.をつけるとクラスメソッドになる
    def self.create_users(names)
        names.map do |name|
            User2.new(name)
        end
    end

    def hello
        "Hello, i am #{@name}"
    end
end

names = ['Alice','Bob','Carol']

# クラスメソッドのよびだし
users = User2.create_users(names)
users.each do |user|
   p user.hello
end