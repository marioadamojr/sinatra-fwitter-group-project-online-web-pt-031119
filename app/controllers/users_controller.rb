class UsersController < ApplicationController

  get '/signup' do
    if !logged_in?
      erb :"/users/signup"
    else
      redirect to "/tweets"
    end
  end

  post '/signup' do
    if params[:username] != "" && params[:email] != "" && params[:password] != ""
      @user = User.new(params)
      @user.save
      session[:user_id] = @user.id
      redirect to "/tweets"
    else
      redirect '/signup'
    end
  end

  get '/login' do
    # binding.pry
    if !logged_in?
      erb :"/users/login"
    else
      redirect "/tweets"
    end
  end

  post '/login' do
    redirect to "/tweets"
  end

end
