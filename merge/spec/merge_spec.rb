require './lib/merge'
require 'rspec'
require 'pry'

RSpec.describe "Merge Sort" do
  it "exists" do
    merge = Merge.new

    expect(merge).to be_an_instance_of(Merge)
  end

  it "can sort arrays" do
    merge = Merge.new
    unsorted_arr = [1,7,5,4,6,2,3]
    sorted_arr = [1,2,3,4,5,6,7]

    expect(merge.sort(unsorted_arr)).to eq(sorted_arr)
  end

end