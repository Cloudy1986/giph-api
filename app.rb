require 'sinatra/base'
require 'sinatra/reloader'
require 'httparty'

class ApplicationController < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :'home'
  end

  get '/fun-fact' do
    @fun_fact = HTTParty.get('https://api.aakhilv.me/fun/facts').parsed_response[0]
    erb :'fun_fact'
  end

  get '/would-you-rather' do
    @question = HTTParty.get('https://api.aakhilv.me/fun/wyr').parsed_response[0]
    erb :'would_you_rather'
  end

  run! if app_file == $0
end
