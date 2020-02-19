require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  get '/reversename/:name' do
    @name = params[:name]
    "#{params[:name].reverse}"
  end
  
  get '/square/:number' do
    @number = params[:number]
    #binding.pry
    "#{params[:number].to_i**2}"
  end 
  
  get '/say/:number/:phrase' do 
    @x_times = params[:number]
    @phrase = params[:phrase]
    binding.pry
    "#{params[:phrase]}\n#{params[:phrase]}\n#{params[:phrase]}\n"
    
    params[:number].to_i.times { params[:phrase] } 
    
    #this = ["#{params[:phrase]} /n"] * params[:number].to_i
    #"#{this}"
  end 
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
     @word1 = params[:word1]
     @word2 = params[:word2]
     @word3 = params[:word3]
     @word4 = params[:word4]
     @word5 = params[:word5]
     #binding.pry
     
     erb :join_words     

  end 
  
  
  get '/:operation/:number1/:number2' do
    
  end 
  
  

end