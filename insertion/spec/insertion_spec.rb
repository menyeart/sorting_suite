require './lib/insertion'
require 'rspec'
require 'pry'

RSpec.describe "Insertion" do
  it "exists" do
    insertion = Insertion.new

    expect(insertion).to be_an_instance_of(Insertion)
  end

  it "can sort small int arrays" do
    insertion = Insertion.new
    arr = [1,10,9,5,4,6,7,2,3,8]

    expect(insertion.sort(arr)).to eq([1,2,3,4,5,6,7,8,9,10])
  end

  it "can sort larger int arrays" do
    insertion = Insertion.new
    arr = (1..1000).to_a.shuffle

    expect(insertion.sort(arr)).to eq((1..1000).to_a)
  end

end