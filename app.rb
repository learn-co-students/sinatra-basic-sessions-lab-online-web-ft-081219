require_relative 'config/environment'

class App < Sinatra::Base
    configure do
         enable :sessions
         set :session_secret, "my_session"
    end
        

    get '/' do
      erb :index
    end

    post '/checkout' do
        @sessions = session
        item = params["item"]
        @sessions[:item] = item
        
        erb :checkout
    end
end