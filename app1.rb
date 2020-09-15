require 'sinatra'

get '/' do
  'hello!'
end

get '/secret' do
  'This is a secret page!!!! 112234567'
end

get '/random-cat' do
  @random_name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index1)
end

post '/named-cat' do
  @random_name = params[:name]
  erb(:namedcat)
end

egt '/cat-form' do
  erb(:form)
end