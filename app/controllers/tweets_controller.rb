class TweetsController < ApplicationController

  get '/tweets' do #index
    # binding.pry
    @tweets = Tweet.all
    erb :"/tweets/index"
  end

end
