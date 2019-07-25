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
    if !logged_in?
      redirect "/login"
    else
      post = Post.find(params[:id])
      if post.user_id == current_user.id
      "An edit post form #{current_user.id} is editing #{post.id}"
    else
      redirect '/post'
    end
      end
    end
  end
