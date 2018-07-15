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

  get "/say/:number" do
    @number = params[:number]
    num = @number.to_i
    num.times do
    "show me the money"
  end
  end


end
