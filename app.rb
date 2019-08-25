require_relative 'config/environment'

class App < Sinatra::Base
  # get '/goodbye/:name' do
  #   @user_name = params[:name]
  #   "Goodbye, #{@user_name}."
  # end

  # get '/multiply/:num1/:num2' do
  #   @num1 = params[:num1].to_i
  #   @num2 = params[:num2].to_i
  #   "#{@num1 * @num2}"
  # end
  
  # ^^ previous examples. 
  
  get '/reversename/:name' do
    @user_name = params[:name]
    "#{@user_name}".reverse 
  end
  
  get '/square/:number' do
    @num = params[:number].to_i
    
   erb :square
    
  end
  
  get '/say/:number/:phrase' do 
  @number = params[:number].to_i
  @phrase = params[:phrase]
  
  erb :say
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
  @w1 = params[:word1]
  @w2 = params[:word2]
  @w3 = params[:word3]
  @w4 = params[:word4]
  @w5 = params[:word5]
  "#{@w1} #{@w2} #{@w3} #{@w4} #{@w5}."
  
end
  
  
  get '/:operation/:number1/:number2' do 
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    
  end
    
    
    
  


end