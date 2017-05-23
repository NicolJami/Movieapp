require 'bundler'
Bundler.require
require_relative 'models/model.rb'
class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  
  get '/start' do
    erb :login
  end

  get '/signup' do
    erb :signup
  end
    get '/contact' do
    html :contact
  end
      get '/more' do
    html :blog
  end
      get '/about' do
    html :about
  end
  
  post '/login' do
    username=params[:uname]
    password=params[:psw]
    
    if username=="nicole" && password=="hi"
      erb :start
    end
  end
  
end