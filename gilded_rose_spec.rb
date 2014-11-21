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

  it "normal item should never have quality less than zero" do
    30.times { |num| subject.update_quality }
    expect(subject.items[0].quality).to eq(0)
  end

  it "immutable item should not change at all" do
    1000.times { |num| subject.update_quality }
    expect(subject.items[3].quality).to eq(80)
  end

  it "aged item should increase" do
    subject.update_quality
    expect(subject.items[1].quality).to eq(1)

    subject.update_quality
    expect(subject.items[1].quality).to eq(2)
  end

  it "aged item should increase more than 50" do
    1000.times { |num| subject.update_quality }
    expect(subject.items[1].quality).to eq(50)
  end

  it "time limit item should increase according to time slots" do
    5.times { |num| subject.update_quality }
    expect(subject.items[4].quality).to eq(25)

    5.times { |num| subject.update_quality }
    expect(subject.items[4].quality).to eq(35)

    5.times { |num| subject.update_quality }
    expect(subject.items[4].quality).to eq(50)

    # 1.times { |num| subject.update_quality }
    # expect(subject.items[4].quality).to eq(0)
  end

end
