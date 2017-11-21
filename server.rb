require 'sinatra'

get '/' do
  erb :index
end

get '/the-big-day' do
  erb :'the-big-day'
end

get '/help-us-out' do
  erb :'help-us-out'
end

get '/places-to-stay' do
  erb :'places-to-stay'
end
