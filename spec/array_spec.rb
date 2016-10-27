require 'spec_helper'

describe Array do
  let(:flat_array){ [1, 2, 3, 4, 5, 6, 7, 8, 9] }
  let(:single_nested_array){ [1,2,3,[4,5,6],[7,8], 9] }
  let(:multiple_nested_array){ [1,2,3,[4,[5,6],7],[8,9]] }

  it "should perform flatten operation on flat arrays" do
    expect( flat_array.flat_it ).to eq(flat_array)
  end

  it "should perform flatten operation on single nested arrays" do
    expect( single_nested_array.flat_it ).to eq(flat_array)
  end

  it "should perform flatten operation on multiple nested arrays" do
    expect( multiple_nested_array.flat_it ).to eq(flat_array)    
  end

end