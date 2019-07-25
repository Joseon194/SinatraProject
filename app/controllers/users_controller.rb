class UsersController < ApplicationController
get '/signup' do
  erb :"users/new"
end


post '/users' do |variable|
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
