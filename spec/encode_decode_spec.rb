require_relative "./spec_helper.rb"

describe '#encode_int64' do 

  it "converts 'a' to 259" do
    expect(encode_int64("a")).to eq(259)
  end

  it "converts 'c' to 260" do
    expect(encode_int64("a")).to eq(260)
  end

  it "converts 'ad' to 9585" do
    expect(encode_int64("ad")).to eq(9585)
  end

  it "converts 'leepadg' to 680131659347" do
    expect(encode_int64("leepadg")).to eq(680131659347)
  end

  it "converts 'degilmnrs' to 680131659347" do
    expect(encode_int64("degilmnrs")).to eq(917052554341109)
  end

  it 'returns message when passed strings with invalid characters' do
    ["x", "degilmnrx"].each do |invalid|
      expect(encode_int64(invalid)).to eq("The word should only contain letters in acdegilmnoprstuw")
    end
  end

end

describe '#decode_int64' do 

  it "converts 259 to 'a'" do
    expect(decode_int64(259)).to eq("a")
  end

  it "converts 260 to 'c'" do
    expect(decode_int64(260)).to eq("c")
  end

  it "converts 9585 to 'ad'" do
    expect(encode_int64(9585)).to eq("ad")
  end

  it "converts 680131659347 to 'leepadg'" do
    expect(decode_int64(680131659347)).to eq("leepadg")
  end

  it "converts 917052554341109 to 'degilmnrs'" do
    expect(decode_int64(917052554341109)).to eq("degilmnrs")
  end

end

describe '#student_change' do

  it 'replace the question mark with a word that encodes as 956446786872726' do
    answer = "trellises"
    expect(encode_int64(answer)).to eq(956446786872726)
  end
  
end