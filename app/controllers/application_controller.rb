class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "sinatra_project"
  end

helpers do

    def logged_in?
      !!session[:email]
    end

    def login(email)
      session[:email] = param[:email]
    end

    def logout
      session.clear
    end

  end
end
