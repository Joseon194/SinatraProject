class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "sinatra_project"
  end

    get '/' do
      session[:greeting] = "Hello World"
      cookie[:a_dangerous_value] = "You have $100 in credit!"
      "Hello World!"
    end

    get '/remember' do
      session[:greeting]
end

end
