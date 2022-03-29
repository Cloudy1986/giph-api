require 'sinatra/base'
require 'sinatra/reloader'
require 'httparty'
require './lib/api'

class ApplicationController < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    @api_response = API.new('https://api.aakhilv.me', '/fun/facts')
    p @api_response
    erb :'home'
  end

  run! if app_file == $0
end
