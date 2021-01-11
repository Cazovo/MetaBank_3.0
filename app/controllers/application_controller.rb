require 'sinatra'
class ApplicationController < Sinatra::Base
  
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, ENV["SESSION_SECRET"]
  end
  
  
  get '/' do
    "Hello World"
  end
  
  get '/login' do
    erb :'users/login'
  end
  
   post '/login' do
      user = User.find_by(username: params[:username])
      if user && user.authenticate(params[:password])
          session[:user_id] = user.id
          redirect '/accounts'
      else 
          redirect '/signup'
      end
   end
    
    get '/logout' do
      session.destroy
      redirect '/'
    end
    
    helpers do 
      def logged_in?
        !!sesion[:user_id]
      end
      
      def current_user
        @user ||- User.find_by(id: session[:user_id]) if logged_in?
      end
    end
end  
