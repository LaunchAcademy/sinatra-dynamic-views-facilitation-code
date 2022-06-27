require "sinatra"
require "pry" if development? || test?
require "sinatra/reloader" if development?

set :bind, '0.0.0.0'  # bind to all interfaces

get '/' do
  "Hello World"
end

get "/cards" do
  @cards = ["Dark-Magician", "Exodia", "Trap-Hole", "Blue-Eyes-White-Dragon-Holofoil"]

  erb :cards
end

get "/cards-display/:favorite_card" do 

  @card = params["favorite_card"]

  erb :display
end




