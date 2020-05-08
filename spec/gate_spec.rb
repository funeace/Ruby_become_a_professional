require './lib/gate'

describe "改札機プログラム" do
  it "ゲートが呼び出される" do
    expect(Gate.new)
  end
end