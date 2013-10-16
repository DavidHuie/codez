require "spec_helper"

describe Codez::Fips do

  describe "#from_zip" do

    it 'returns the correct fips code' do
      Codez::Fips.from_zip('14410').should == '36055'
    end

    it 'works with integers' do
      Codez::Fips.from_zip(14410).should == '36055'
    end

    it "eturns nil if there isn't a fips code for the zip" do
      Codez::Fips.from_zip('hello there').should be_nil
    end
  end
end

describe Codez::AreaCode do
  describe "#area_code" do
    it 'returns the correct area code' do
      Codez::AreaCode.from_zip(91344).should eq '818'
    end

    it 'returns nil for a bad zip' do
      Codez::AreaCode.from_zip(934).should be_nil
    end
  end
end

describe Codez::State do
  describe "#state" do
    it 'returns the correct state' do
      Codez::State.from_zip(91344).should eq 'CA'
    end
  end
end
