require './environment'

module FormsLab
  class App < Sinatra::Base
    get '/' do 
      "Welcome to the Nested Forms Lab!"
    end

    get '/new' do
      erb :new 
    end

    post '/pirates' do
      params[:pirate][:ships].each {|details| Ship.new(details)}
      @pirate = Pirate.new(params[:pirate])
      @ships = Ship.all

      erb :show
    end
  end
end
