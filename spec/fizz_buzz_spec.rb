require '../lib/fizz_buzz'

describe 'Fizz Buzz' do
  context '3の倍数の時' do
    it '引数が3のときFizzが返される' do
      expect(fizz_buzz(3)).to eq 'Fizz'
    end
    it '引数が6のときFizzが返される' do
      expect(fizz_buzz(6)).to eq 'Fizz'
    end
  end

  context '5の倍数の時' do
    it '引数が5のときBuzzが返される' do
      expect(fizz_buzz(5)).to eq 'Buzz'
    end
  end

  context '3の倍数かつ5の倍数(15の倍数)のとき' do
    it '引数が15のときFizzBuzzが返される' do
      expect(fizz_buzz(15)).to eq 'Fizz Buzz'
    end
  end

  context '3の倍数でも5の倍数でもないとき' do
    it '引数が1のとき数字が返される' do
      expect(fizz_buzz(1)).to eq '1'
    end
    it '引数が2のとき数字が返される' do
      expect(fizz_buzz(2)).to eq '2'
    end
    it '引数が4のとき数字が返される' do
      expect(fizz_buzz(4)).to eq '4'
    end
  end
end