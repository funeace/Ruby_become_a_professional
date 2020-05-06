require './lib/convert_length'

describe "長さの単位変換プログラムのテスト" do
  context "メートル変換" do
    it "第１引数がインチ" do
      expect(convert_length(15,from: :in,to: :m)).to eq 0.38
    end

    it "第１引数がフィート" do
      expect(convert_length(35000,from: :ft,to: :m)).to eq 10670.73
    end

  end
  context "フィート変換" do
  end
  context "インチ変換" do
    it "第１引数がメートル" do
      expect(convert_length(1,from: :m,to: :in)).to eq 39.37
    end
  end

end