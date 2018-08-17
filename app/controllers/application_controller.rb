require './config/environment'
require './app/models/quiz.rb'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
  
  get '/' do
    return erb :index
  end
  
  get '/taylor' do
    return erb :taylor
  end
  
  get '/isabel' do
    return erb :isabel
  end
  
  get '/jiaming' do
    return erb :jiaming
  end
  

  post '/results' do

  points_array = params.values 
  
    total = 0
    points_array.each do |point| 
      total += point.to_i 
    end

    result = calculate_result(total) 
    
    
    if result == "jiaming" 
      return erb :jiaming
    elsif result == "taylor"
      return erb :taylor
    elsif result == "isabel"
      return erb :isabel
    end
    
    
  end
end
