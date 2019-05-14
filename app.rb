require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
      hash = params[:pirate]
      @pirate = Pirate.new(hash[:name], hash[:weight], hash[:height])
      @ships = []
      hash[:ships].each do |ship_hash|
        @ships << Ship.new(ship_hash[:name], ship_hash[:type], ship_hash[:booty])
      end
      erb :"pirates/show"
    end
  end
end
