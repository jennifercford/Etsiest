require "etsiest/version"
require "etsy"
require "json"
require "pry"

Etsy.api_key = ENV['ETSY_KEY']

module Etsiest
  class Api <Sinatra::Application
    get "/search" do
      query =params["q"]
      response = Etsy.serch_thing(response)
#binding.pry
#response.class
  # #Etay::response
# reponse.methods
# ls response
# response.code
  #JSON.parse(response.body)
#response.to_hash

      erb :index, locals: {results: response}
      #results and response are your choice of words, "results"
      # name given and response is variable of data in controller
      #data = response.result 
    end
    run! if app_file == $0
      # Your code goes here...
end
