require './environment'
module FormsLab            #What is this?
  class App < Sinatra::Base

    # code other routes/actions here
  get '/' do
    erb :root
  end

  get '/new' do
    erb :'/pirates/new'  #NOTICE the syntax
  end

  post '/pirates' do  #doesn't work if I type in URL
   # binding.pry
    @name  = 
    @pirate = Pirate.new(params["pirate"])
    params["pirate"]["ships"].each do |ship|
      Ship.new(ship)
     # binding.pry
    end
   
    @ships = Ship.all
  
    # @name = params["pirate"]["name"]
    # @height = params["pirate"]["height"]
    # @weight = params["pirate"]["weight"]
    # @ship_name_1 = params["pirate"]["ships"][0]["name"]
    # @name = params["pirate"]["name"]
    # @name = params["pirate"]["name"]
    erb :'/pirates/show'
  end

  end
end
