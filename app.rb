require 'sinatra'

get '/' do
  'asdfasdf'
end

post '/:url' do
  puts params[:url]
end
