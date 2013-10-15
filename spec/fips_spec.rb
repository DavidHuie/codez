require "spec_helper"

describe Codez::Fips do

  describe "#from_zip" do

    it "returns the correct fips code" do
      Codez::Fips.from_zip("14410").should == "36055"
    end

    it "works with integers" do
      Codez::Fips.from_zip(14410).should == "36055"
    end

    it "returns nil if there isn't a fips code for the zip" do
      Codez::Fips.from_zip("hello there").should be_nil
    end

  end

  describe "#area_code" do
    it "returns the correct area code" do
      Codez::Fips.area_code("91344").should eq "818"
    end

    it "works with integers" do
      Codez::Fips.area_code(91344).should eq "818"
    end

    it "returns nil if it gets an incorrect zip" do
      Codez::Fips.area_code("00000").should be_nil
    end
  end
end
