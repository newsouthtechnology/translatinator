require 'spec_helper'

describe Translatinator do
  it "produces a help menu" do
    result = Translatinator.help

    expect(result).to include('Welcome', 'lang', 'text-to-translate')
  end

  it "produces a language menu" do
    result = Translatinator.lang

    expect(result).to be_a(Hash)
  end

    it "translates text" do
      languageA = 'es'
      languageB = 'fr'
      text = 'hello'

    resultA = Translatinator.translate(languageA, text)
    resultB = Translatinator.translate(languageB, text)

    expect(resultA.gsub!("\u00A1", "")).to eq('hola')
    expect(resultB).to eq('bonjour')
  end
end
