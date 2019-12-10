# bserver.rb
require 'sinatra'
require 'googlebooks'

get '/' do
  erb :index
end

post '/' do
  @input = params['query']
  @responses = GoogleBooks.search(@input)
  erb :response
end
