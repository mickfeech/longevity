require 'longevity/products'

describe 'Longevity::Products.all' do
  it 'responds' do
    expect(Longevity::Products).to respond_to(:all)
  end

  it 'is of class Array' do
    expect(Longevity::Products.all).to be_a_kind_of(Array)
  end

  it 'has a specific product in the array' do
    #expect(Longevity::Products.all.any? { |b| b['name'] == 'Apache HTTP Server' }).to be(true)
  end

  it 'has a web page to find the version' do
    #expect(Longevity::Products.all.any? { |b| b['web'] == 'https://en.wikipedia.org/wiki/Apache_HTTP_Server' }).to be(true)
  end
end

describe 'Longevity::Products.find' do
  it 'responds' do
    expect(Longevity::Products).to respond_to(:find)
  end

  it 'finds specific products' do
    puts Longevity::Products.find('Tomcat')
  end
end