require './gilded_rose.rb'
require "rspec"

describe GildedRose do

  it "should do something" do
    subject.update_quality
  end

  it "hello shoud be hello" do
    expect("hello").to eq("hello")
  end

end
