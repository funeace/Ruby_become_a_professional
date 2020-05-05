require './lib/rgb'

describe "rgb変換プログラムのテスト" do
  context "to_hexメソッドのテスト" do
    it "0,0,0を入力すると#000000が出力される" do
      expect(to_hex(0,0,0)).to eq '#000000'
    end
    it "255,255,255を入力すると#FFFFFFが出力される" do
      expect(to_hex(255, 255, 255)).to eq '#ffffff'
    end
    it "4,60,120を入力すると#043c78が出力される" do
      expect(to_hex(4, 60, 120)).to eq '#043c78'
    end
  end

  context "to_intsメソッドのテスト" do
    it "#000000を入力すると[0,0,0]が出力される" do
      expect(to_ints('#000000')).to eq [0, 0, 0]
    end
    it "#ffffffを入力すると[255,255,255]が出力される" do
      expect(to_ints('#ffffff')).to eq [255, 255, 255]
    end
    it "#043c78を入力すると[4, 60, 120]が出力される" do
      expect(to_ints("#043c78")).to eq [4, 60, 120]
    end
  end
end