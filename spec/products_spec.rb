require 'longevity/products'

describe 'Longevity::Products.all' do
  it 'responds' do
    expect(Longevity::Products).to respond_to(:all)
  end

  it 'is of class Array' do
    expect(Longevity::Products.all).to be_a_kind_of(Array)
  end

end

describe 'Longevity::Products.find' do
  it 'responds' do
    expect(Longevity::Products).to respond_to(:find)
  end

  it 'finds specific products' do
    expect(Longevity::Products.find('Tomcat').name).to eq('Apache Tomcat')
    expect(Longevity::Products.find('Tomcat').web).to eq('https://en.wikipedia.org/wiki/Apache_Tomcat')
  end
end

describe 'Longevity::Products.version' do
  let(:product) { Longevity::Products.find('Tomcat') }

  it 'responds' do
    expect(Longevity::Products).to respond_to(:version)
  end

  it 'gets a version' do
    expect(product.name).to eq('Apache Tomcat')
  end

end