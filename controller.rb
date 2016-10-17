require 'sinatra'
require 'sinatra/contrib/all'
require 'pry-byebug'
require_relative './models/address'
require 'json'

get '/' do
  erb (:about_me)
end

get '/address' do
  content_type(:json)
  # address = Address.new(params[:address], params[:building], params[:postcode], params[:phone].to_i)
  results = {
    address: '3 ARGYLE HOUSE',
    building: 'CODEBASE',
    postcode: 'e13 zqf',
    phone: '0131558030'
    }
  return results.to_json
end



