require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    @name = params[:name]
    @name.reverse
  end

  get "/square/:number" do
    @number = params[:number]
    num = @number.to_i
    num = num ** 2
    num.to_s
  end

  get "/say/:number/:phrase" do
    @number = params[:number]
    @phrase = params[:phrase]
    num = @number.to_i
    num.times.map do
      @phrase
    end
  end

get "/say/:word1/:word2/:word3/:word4/:word5"


end
