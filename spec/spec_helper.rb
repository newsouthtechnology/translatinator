require_relative 'translatinator.rb'

before each do
  @testing = Translatinator::TerminalClient.new.start
end

describe Translatinator do
  it "returns list of supported languages when prompted with 'lang'" do
    input = 'lang'
    @testing.get_command

    expect(result).to eq(false)
  end

  xit "moves consonant(s) to the end of input" do
    translate('')

    expect(result).to eq()
  end

  xit "adds 'ay' to end of input" do
    expect(result).to eq()
  end

  xit "if word starts with a vowel it adds 'way' to the end" do
    expect(result).to eq()
  end

  xit "if word starts with y it adds 'ay' to the end" do
    expect(result).to eq()
  end

  xit "" do
    expect(result).to eq()
  end
end
