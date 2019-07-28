class UsersController < ApplicationController

get '/signup' do
  erb :"users/new.html"
end

get '/login' do
erb :"sessions/login.html"
end

get '/home' do
       if Helpers.is_signed_in?(session)
           erb :'/users/home'
       else
           redirect to '/signin'
       end
   end

post '/users' do
  @user = User.new
  @user.email = params[:email]
  @user.password = params[:password]
  if @user.save
    redirect '/login'
  else
    erb :"users/new.html"
  end
end
end
