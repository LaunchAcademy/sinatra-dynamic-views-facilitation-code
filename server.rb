require "sinatra"
require "pry" if development? || test?
require "sinatra/reloader" if development?

set :bind, '0.0.0.0'  # bind to all interfaces

get '/' do
  # "Hello World"
  # erb(:cats)
  # erb :"launchers/cats"
  erb :cats
end

get "/cards" do
  @cards = ["Dark-Magician", "Exodia", "Trap-Hole", "Blue-Eyes-White-Dragon-Holofoil"]
  # message = "hi everyone!"
  erb :cards
end

get "/cards/:favorite_card" do
  # binding.pry
  @card = params["favorite_card"]
  # @card = "Dark-Magician"
  erb :show
end
