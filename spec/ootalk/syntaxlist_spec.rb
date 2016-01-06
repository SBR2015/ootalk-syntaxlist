require 'spec_helper'

describe Ootalk::Syntaxlist do
  it 'has a version number' do
    expect(Ootalk::Syntaxlist::VERSION).not_to be nil
  end

  it 'does something useful' do
    expect(Ootalk::Syntaxlist.create(:en)).to be_truthy
    expect(Ootalk::Syntaxlist.create(:ja)).to be_truthy
    expect(Ootalk::Syntaxlist.create(:cn)).to be_truthy
    expect(Ootalk::Syntaxlist.create(:vi)).to be_truthy
  end

  it 'does has symbols' do
    data = Ootalk::Syntaxlist.create(:en)
    data.each do |dat|
        expect(dat[:symbol]).not_to be_nil 
    end
  end
end
