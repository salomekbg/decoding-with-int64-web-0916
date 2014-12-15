require_relative "./spec_helper.rb"

describe '#encode_int64' do 

  it "converts 'a' to 259" do
    expect(encode_int64("a")).to eq(259)
  end

  it "converts 'leepadg' to 680131659347" do
    expect(encode_int64("leepadg")).to eq(680131659347)
  end

  it "converts 'degilmnrs' to 680131659347" do
    expect(encode_int64("degilmnrs")).to eq(917052554341109)
  end

  it 'returns message for strings that include invalid characters' do
    expect(encode_int64("x")).to eq("The word should only contain letters in acdegilmnoprstuw")
    expect(encode_int64("degilmnrx")).to eq("The word should only contain letters in acdegilmnoprstuw")
  end

end

describe '#decode_int64' do 

  it "converts 259 to 'a'" do
    expect(decode_int64(259)).to eq("a")
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