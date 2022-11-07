require 'sinatra'
require 'sass'

set :server, 'webrick'

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

party = [
  { name: "Sarah-May", title: "Bride", image: "sarah.jpg",},
  { name: "Jonny", title: "Groom", image: "jonny.jpg"},
  { name: "Marie", title: "Mother of the Bride", image: "marie.jpg"},
  { name: "Jon", title: "Father of the Bride", image: "jon.jpg"},
  { name: "Alison", title: "Groomsmam", image: "alison.jpg"},
  { name: "Laurence", title: "Father of the Groom", image: "laurence.jpg"},
  { name: "Adrian", title: "Stepfather of the Groom", image: "adrian.jpg"},
  { name: "Nathan", title: "Bride's Brother", image: "nathan.jpg"},
  { name: "Chris", title: "Groomsbro", image: "chris.jpg"},
  { name: "Dan", title: "Groomsbro", image: "dan-l.jpg"},
  { name: "Joe", title: "Groomsbro", image: "joe.jpg"},
  { name: "Danni", title: "Bridesmaid", image: "danni.jpg"},
  { name: "Dan", title: "Bridesman", image: "dan-p.jpg"},
  { name: "Emma", title: "Bridesmaid", image: "emma.jpg"},
  { name: "Emily", title: "Bridesmaid", image: "emily.jpg"},
  { name: "Jo", title: "Bridesmaid", image: "jo.jpg"},
  { name: "Ruth", title: "Bridesmaid", image: "ruth.jpg"},
  { name: "Luke", title: "Best Man", image: "luke.jpg"},
  { name: "Helen", title: "Groomsmaid", image: "helen.jpg"}
]

get '/the-wedding-party' do
  party.shuffle!
  erb :'the-wedding-party', locals: { party: party }
end

get '/the-wedding-party/style.css' do
  scss :'the-wedding-party'
end

get '/rsvp' do
  erb :'rsvp-search'
end

get '/contact-us' do
  erb :'contact-us'
end

not_found do
  erb :'error', locals: { error: "Sorry, there's nothing here!" }
end

error do
  erb :'error'
end
