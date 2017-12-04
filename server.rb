require 'sinatra'
require 'sass'

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
  { name: "Sarah-May", title: "Bride", image: "placeholder.png", text: "FACT." },
  { name: "Jonny", title: "Groom", image: "jonny.jpg", text: "FACT." },
  { name: "Marie", title: "Mother of the Bride", image: "placeholder.png", text: "FACT." },
  { name: "Jon", title: "Father of the Bride", image: "placeholder.png", text: "FACT." },
  { name: "Alison", title: "Groomsmam", image: "placeholder.png", text: "FACT." },
  { name: "Laurence", title: "Father of the Groom", image: "placeholder.png", text: "FACT." },
  { name: "Adrian", title: "Stepfather of the Groom", image: "placeholder.png", text: "FACT." },
  { name: "Nathan", title: "Bride's Brother", image: "placeholder.png", text: "FACT." },
  { name: "Chris", title: "Groomsbro", image: "placeholder.png", text: "FACT." },
  { name: "Dan", title: "Groomsbro", image: "placeholder.png", text: "FACT." },
  { name: "Joe", title: "Groomsbro", image: "placeholder.png", text: "FACT." },
  { name: "Danni", title: "Bridesmaid", image: "placeholder.png", text: "FACT." },
  { name: "Dan", title: "Bridesman", image: "placeholder.png", text: "FACT." },
  { name: "Emma", title: "Bridesmaid", image: "placeholder.png", text: "FACT." },
  { name: "Emily", title: "Bridesmaid", image: "placeholder.png", text: "FACT." },
  { name: "Jo", title: "Bridesmaid", image: "placeholder.png", text: "FACT." },
  { name: "Ruth", title: "Bridesmaid", image: "placeholder.png", text: "FACT." },
  { name: "Luke", title: "Best Man", image: "placeholder.png", text: "FACT." },
  { name: "Helen", title: "Groomsmaid", image: "placeholder.png", text: "FACT." }
]

get '/the-wedding-party' do
  party.shuffle!
  erb :'the-wedding-party', locals: { party: party }
end

get '/the-wedding-party/style.css' do
  scss :'the-wedding-party'
end
