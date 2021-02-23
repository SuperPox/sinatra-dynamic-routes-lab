require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    @user_name = params[:name]
    temp = @user_name.to_s.reverse!
    "#{temp}"
  end

  get '/square/:number' do
    (params[:number].to_i ** 2).to_s
  end
  
  get '/say/:number/:phrase' do
    string = ''
    amount = (params[:number].to_i)
    phrase = (params[:phrase].to_s)
    amount.times do
      string += phrase
    end
    string
    #binding.pry
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    string = ''
    w1 = (params[:word1].to_s)
    w2 = (params[:word2].to_s)
    w3 = (params[:word3].to_s)
    w4 = (params[:word4].to_s)
    w5 = (params[:word5].to_s)
    string = "#{w1} #{w2} #{w3} #{w4} #{w5}."
    string
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    case params[:operation]
    when 'add'
      temp = (num1+num2).to_s
    when 'subtract'
      temp = (num1-num2).to_s
    when 'multiply'
      temp = (num1*num2).to_s
    when 'divide'
      temp = (num1/num2).to_s
    end
  end

end