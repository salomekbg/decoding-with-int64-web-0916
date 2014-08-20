require_relative "./spec_helper.rb"

describe '#encode_int64' do 

  it 'correctly calculates the final result' do
    expect(encode_int64("leepadg")).to eq(680131659347)
    expect(encode_int64("degilmnrs")).to eq(917052554341109)
  end

  it 'returns message about including proper characters' do
    expect(encode_int64("degilmnrx")).to eq("The word should only contain letters in acdegilmnoprstuw")
  end

end

describe '#decode_int64' do 

  it 'correctly calculates the final result' do
    expect(decode_int64(680131659347)).to eq("leepadg")
    expect(decode_int64(917052554341109)).to eq("degilmnrs")
  end

end

describe '#student_change' do
  it 'find the characters that result in the value' do
    expect(encode_int64("write answer here")).to eq(956446786872726)
  end
end