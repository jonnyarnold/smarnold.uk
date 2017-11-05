require 'sinatra'

get '/' do
  erb :index
end

get '/help-us-out' do
  erb :help_us_out
end
