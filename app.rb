require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :session
    set :session_secret, "secret"
  end 
  
  get '/' do 
    erb :index
  end 
  
  post '/checkput' do
    session["item"] = params[:itme]
    @session = session
  
end