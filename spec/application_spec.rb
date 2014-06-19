require 'spec_helper'

describe Translatinator do
  it "runs a help method" do
    result = Translatinator.help

    expect(result).to include('Welcome', 'lang', 'text-to-translate')
  end
end
