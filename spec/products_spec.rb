require 'longevity/products'

describe 'Longevity::Products.all' do

  it 'responds' do
    expect(Longevity::Products).to respond_to(:all)
  end

  it 'is an array' do
    expect(Longevity::Products.all).to be_a_kind_of(Array)
  end

  it 'has a specific product in the array' do
    expect(Longevity::Products.all).to include('Apache HTTP Server')
  end
end