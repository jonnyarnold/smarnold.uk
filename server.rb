require 'sinatra'

get '/' do
  erb :index
end

get '/the-big-day' do
  erb :'the-big-day'
end
