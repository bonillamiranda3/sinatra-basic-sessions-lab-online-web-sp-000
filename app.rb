require_relative 'config/environment'

class App < Sinatra::Base
  configure do
      enable :sessions
      set :session_secret, "secret"
    end
    get '/' do
      @session = session[:session_secret]
      erb :index
    end


  post '/checkout' do
      session[:item] = params[:item]
      @session = session
      erb :checkout
    end
  end
