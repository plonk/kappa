require 'sinatra'
require 'sinatra/reloader'
require_relative 'asuka'

set environment: :production

get '/' do
  erb :index
end

post '/render' do
  erb :render
end
