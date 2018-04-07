require 'sinatra'
require './lib/url_normalizer'
require './lib/url_encrypter'
require 'json'

post '/' do
  parameters = JSON.parse(request.body.read)
  url = UrlNormalizer.normalized_url(parameters["url"])
  short_url = "/#{UrlEncrypter.encrypt(url)}"
  return_params = {
                    "short_url": short_url,
                    "url": url
                  }
  JSON[return_params]
end

get '/:short_url' do
  short_url = params[:short_url]
  url = UrlEncrypter.decrypt(short_url)
  redirect url, 301
end
