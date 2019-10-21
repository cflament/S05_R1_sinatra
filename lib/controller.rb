require 'gossip'
require 'pry'
class ApplicationController < Sinatra::Base

  get '/' do
    erb :index, locals: {gossips: Gossip.all}
  end 

  get '/gossips/new/' do
    erb :new_gossip
  end

  post '/gossips/new/' do
    Gossip.new(params["gossip_author"], params["gossip_content"]).save
    redirect '/'
  end

  get '/gossips/:id/' do 
    puts "ceci est mon potin n° #{params['id']}"
    erb :show, locals: {id: params['id'], gossip: Gossip.find(params['id'])}
  end

  get '/gossips/:id/edit/' do
    potin = Gossip.find(params['id'])
    puts potin.author
    erb :edit, locals: {gossip: potin}  
  end

  post '/gossips/:id/edit/' do
    puts "**************************************"
    Gossip.update(params['gossip_id'], params['gossip_author'], params['gossip_content'])
    redirect '/'
  end 
    
end
