require 'sinatra'
require_relative './helpers'
require_relative './parts'

get '/' do
  @parts_of_speech = MadLibs::PARTS_OF_SPEECH.deep_copy
  erb :index
end
