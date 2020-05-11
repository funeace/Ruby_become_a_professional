require './lib/bank'
require './lib/team'

describe "deep freeze" do

  context "配列" do
    it "配列の値は正しいか" do
      expect(Team::COUNTRIES).to eq ['Japan', 'US', 'India']
    end

    it "配列自体freezeされているか" do
      expect(Team::COUNTRIES.frozen?).to be_truthy
    end

    it "配列の要素全てfreezeされているか" do
      expect(Team::COUNTRIES.all?{|country| country.frozen?}).to be_truthy
    end
  end

  context "ハッシュ" do
    it "ハッシュは正しいか" do
      expect(Bank::CURRENCIES).to eq({ 'Japan' => 'yen', 'US' => 'dollar', 'India' => 'rupee' })
    end

    it "ハッシュ自身がfreezeされているか" do
      expect(Bank::CURRENCIES.frozen?).to be_truthy
    end

    it "ハッシュの要素全てがfreezeされているか" do
      expect(Bank::CURRENCIES.all?{|key,value|key.frozen? && value.frozen?}).to be_truthy
    end
  end
end
