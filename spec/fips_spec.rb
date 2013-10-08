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

end
