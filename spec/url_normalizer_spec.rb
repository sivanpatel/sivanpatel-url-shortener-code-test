require 'spec_helper'
require 'url_normalizer'

describe UrlNormalizer do

  it 'returns true if the given url has http:// at the beginning of it' do
    url = 'http://www.google.com'
    expect(UrlNormalizer.has_http?(url)).to be true
  end

  it 'returns false if the given url does not begin with http://' do
    url = 'www.google.com'
    expect(UrlNormalizer.has_http?(url)).to be false
  end

  it 'returns the original url if it begins with http://' do
    url = 'http://www.google.com'
    expect(UrlNormalizer.normalized_url(url)).to eq url
  end

  it 'prepends http://to the original url if it does not begin with http://' do
    url = 'www.google.com'
    expect(UrlNormalizer.normalized_url(url)).to eq 'http://www.google.com'
  end
end
