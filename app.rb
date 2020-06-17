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
# Create the pirate and ships, then show them
        @pirate=Pirate.new( params[:pirate] )
        @ships = []
        params[:pirate][:ships].each do |shiphash|
          @ships << Ship.new( shiphash )
        end

        erb :"pirates/show"

      end

    end # class end

  end # module end
