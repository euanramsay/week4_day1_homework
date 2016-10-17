require 'sinatra'
require 'sinatra/contrib/all'
require 'pry-byebug'
require_relative './models/word_formatter'
require 'json'

get '/' do
  erb (:about_me)
end

get '/address' do
  content_type(:json)
  results = {
    address: '3 ARGYLE HOUSE',
    building: 'CODEBASE',
    postcode: 'e13 zqf',
    phone: '0131558030'
    }
  return results.to_json
end

get '/camelcase/:words' do
  words = params[:words]
  sentence = WordFormatter.new(words)
  @new_format = sentence.upper_camelcase()
  erb (:result)
end



