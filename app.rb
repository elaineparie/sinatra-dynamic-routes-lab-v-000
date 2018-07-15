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

  get "/say/:word1/:word2/:word3/:word4/:word5" do
  @word1 = params[:word1]
  @word2 = params[:word2]
  @word3 = params[:word3]
  @word4 = params[:word4]
  @word5 = params[:word5]
  "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    @number1 = params[:number1]
    @number2 = params[:number2]
    num1 = @number1.to_i
    num2 = @number2.to_i
    if @operation.include?(add)
      number1.to_i + @number2.to_i
    end
  #final_num = {@number1 #{@operation} #{@number2}"
  #final_num.to_s
  end

end
