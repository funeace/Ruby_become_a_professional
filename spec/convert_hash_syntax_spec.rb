require './lib/convert_hash_syntax'

describe "ハッシュ記法変換プログラム" do
  let!(:old_syntax) do
    <<~TEXT
      {
        :name => 'Alice',
        :age => 20,
        :gender => :female
      }
    TEXT
  end

  let!(:expected) do
    <<~TEXT
      {
        name: 'Alice',
        age: 20,
        gender: :female
      }
    TEXT
  end

  it "{}を受け取ったら{}を返る" do
    expect(convert_hash_syntax('{}')).to eq '{}'
  end

  it "old_syntaxを受け取ったらexpectedをを返す" do
    expect(convert_hash_syntax(old_syntax)).to eq expected
  end
end
