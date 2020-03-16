require "sinatra"
require "pry" if development? || test?
require "sinatra/reloader" if development?

set :bind, '0.0.0.0'  # bind to all interfaces

get "/cards" do
  @cards = ["Dark-Magician", "Exodia", "Trap-Hole", "Blue-Eyes-White-Dragon-Holofoil"]

  erb :index
end

get "/cards/:card_name" do
  @card_name = params[:card_name]

  erb :show
end
