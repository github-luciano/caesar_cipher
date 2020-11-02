require './lib/caesar_cipher'

describe '#caesar_cipher' do
  it "codes a sentence" do
    expect(caesar_cipher('What a string!', 5)).to eql("Bmfy f xywnsl!")
  end
end