class PostsController < ApplicationController

  get '/posts' do
    "These are publically available posts!"
  end

  get '/posts/new' do
    if !session[:email]
      redirect "/login"
    else
      "A new post form"
    end
end

  get '/posts/:id/edit' do
    if !session[:email]
      redirect "/login"
    else
      "An edit post form"
    end
end
