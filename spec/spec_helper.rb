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

  xit "" do

    expect(result).to eq()
  end

  xit "" do

    expect(result).to eq()
  end

  xit "" do

    expect(result).to eq()
  end

  xit "" do

    expect(result).to eq()
  end

  xit "" do

    expect(result).to eq()
  end
end
