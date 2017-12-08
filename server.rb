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
  { name: "Sarah-May", title: "Bride", image: "sarah.jpg", text: "Partial to pie." },
  { name: "Jonny", title: "Groom", image: "jonny.jpg", text: "Game boy." },
  { name: "Marie", title: "Mother of the Bride", image: "marie.jpg", text: "Chief chocoholic." },
  { name: "Jon", title: "Father of the Bride", image: "jon.jpg", text: "Motorbike maniac." },
  { name: "Alison", title: "Groomsmam", image: "alison.jpg", text: "Adores Abba." },
  { name: "Laurence", title: "Father of the Groom", image: "laurence.jpg", text: "Mad about movies." },
  { name: "Adrian", title: "Stepfather of the Groom", image: "adrian.jpg", text: "Football fanatic." },
  { name: "Nathan", title: "Bride's Brother", image: "nathan.jpg", text: "Penchant for petrol." },
  { name: "Chris", title: "Groomsbro", image: "chris.jpg", text: "Bad movie buff." },
  { name: "Dan", title: "Groomsbro", image: "dan-l.jpg", text: "Super sporty." },
  { name: "Joe", title: "Groomsbro", image: "joe.jpg", text: "~LIKES JAPANESE~." },
  { name: "Danni", title: "Bridesmaid", image: "danni.jpg", text: "Cactus cuddler." },
  { name: "Dan", title: "Bridesman", image: "dan-p.jpg", text: "Near t' the theatre." },
  { name: "Emma", title: "Bridesmaid", image: "emma.jpg", text: "Eager for Jager." },
  { name: "Emily", title: "Bridesmaid", image: "emily.jpg", text: "Crazy for crafts." },
  { name: "Jo", title: "Bridesmaid", image: "jo.jpg", text: "Too cool for school." },
  { name: "Ruth", title: "Bridesmaid", image: "ruth.jpg", text: "Awesome at animation." },
  { name: "Luke", title: "Best Man", image: "luke.jpg", text: "Bonkers for boardgames." },
  { name: "Helen", title: "Groomsmaid", image: "helen.jpg", text: "Dog whisperer." }
]

get '/the-wedding-party' do
  party.shuffle!
  erb :'the-wedding-party', locals: { party: party }
end

get '/the-wedding-party/style.css' do
  scss :'the-wedding-party'
end
