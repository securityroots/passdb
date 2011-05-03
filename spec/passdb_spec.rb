require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Passdb: vendor search" do
  it "should fail if the vendor is empty" do
    lambda{ Passdb::search(:vendor => nil) }.should raise_error(ArgumentError)
  end

  it "should fail if criteria is empty" do
    lambda{ Passdb::search(:criteria => nil) }.should raise_error(ArgumentError)
  end
end
