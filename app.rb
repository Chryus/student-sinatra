require 'sinatra/base'
require './lib/thing'

# Why is it a good idea to wrap our App class in a module?
module StudentSite
  class App < Sinatra::Base
    get '/' do
      "hello world!"
    end

    get '/hello-world' do
      @thing = Thing.new("Magical Jasper", 20)
    	@random_numbers = (1..20).to_a.shuffle
    	erb :hello #erb is a method and we're calling it on the hello view, which returns a string
    end

    get '/artists' do
      @artists = ["Kembra", "Charles Atlas", "Michael Clark", "Marina"]
    	erb :artists
    end

  end
end