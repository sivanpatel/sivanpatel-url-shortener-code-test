require 'sinatra'
require 'json'

post '/' do
  content_type :json
  parameters = JSON.parse(request.body.read)
  return_params = {
                    "short_url": "/abc123",
                    "url": parameters["url"]
                  }
  JSON[return_params]
end

