require 'spec_helper'
require 'url_encrypter'

describe UrlEncrypter do

  it 'encrypts a url' do
    expect(UrlEncrypter.encrypt("www.farmdrop.com")).to eq '486x4ltgmfzg5zdsn8yc7y6pnA'
  end

  it 'decrypts a url to its original value' do
    url = 'www.farmdrop.com'
    encrypted = UrlEncrypter.encrypt(url)
    expect(UrlEncrypter.decrypt(encrypted)).to eq url
  end
end
