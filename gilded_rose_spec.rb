require './gilded_rose.rb'
require "rspec"

describe GildedRose do

  it "should do something" do
    subject.update_quality
  end

  it "hello shoud be hello" do
    expect("hello").to eq("hello")
  end

  it "vest shoud decrease twice as fast after sell in date" do
    10.times { |num| subject.update_quality }
    expect(subject.items[0].quality).to eq(10)

    subject.update_quality
    expect(subject.items[0].quality).to eq(8)
  end

end
