require './lib/bubble'
require 'pry'
require 'rspec'

RSpec.describe "Bubble" do
  it "exists" do
    bubble = Bubble.new()

    expect(bubble).to be_an_instance_of(Bubble)
  end

  it "can sort small arrays" do
    bubble = Bubble.new()
    array = [9,5,3,4,7,2,6]

    expect(bubble.sort(array)).to eq([2,3,4,5,6,7,9])
  end

  it "can sort larger arrays" do
    bubble = Bubble.new()
    unsorted_arr = (1..1_000).to_a.shuffle
    sorted_arr = (1..1_000).to_a

    expect(bubble.sort(unsorted_arr)).to eq(sorted_arr)
  end

  it "can sort float arrays" do
    bubble = Bubble.new()
    array = [0.6, 50.5, 12.4, 100.9, 3.1, 26.45]

    expect(bubble.sort(array)).to eq([0.6, 3.1, 12.4, 26.45, 50.5, 100.9])
  end

end