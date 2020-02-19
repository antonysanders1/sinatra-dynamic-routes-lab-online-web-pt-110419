require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end
  
  get '/square/:number' do
    @number = params[:number].to_i**2
    @number.to_s
  end 
  
  get '/say/:number/:phrase' do
    string = ""
    @number = params[:number].to_i
    @phrase = params[:phrase]
    #binding.pry
    
    @number.times { string += "#{@phrase}" } 
    
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