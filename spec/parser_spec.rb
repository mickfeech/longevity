require 'longevity/parser'

describe 'Longevity::Parser.parse_html' do
  let(:product) { Longevity::Products.find('DB2') }
  before {
    stub_request(:get, 'https://en.wikipedia.org/wiki/IBM_DB2').
        to_return(:status => 200, :body => File.new('spec/fixtures/IBM_DB2.html'), :headers => {})
  }
  it 'responds' do
    expect(Longevity::Parser).to respond_to(:parse_html)
  end

  it 'returns a version number' do
    expect(Longevity::Parser.parse_html(product)).not_to be nil
    expect(Longevity::Parser.parse_html(product)).to eq('10.5')
  end
end