# frozen_string_literal: true

require './environment'

module FormsLab
  class App < Sinatra::Base
    get '/' do
      erb :root
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
      Pirate.parse_input(params)
      @pirate = Pirate.all.last
      @ships = Ship.all
      erb :"pirates/show"
    end
  end
end
