module Clarifai
  # Wrapper for the Clarifai API
  #
  # @note All methods have been separated into modules and follow the same grouping used in https://developer.clarifai.com/docs
  class Client < API
    Dir[File.expand_path('../client/*.rb', __FILE__)].each{|f| require f}

    include Clarifai::Client::Info
    include Clarifai::Client::Tag
  end
end
