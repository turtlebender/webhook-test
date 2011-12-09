require 'sinatra'
require "json"

post '/webhook-test' do

  push = JSON.parse(params[:payload])
  environment = push['ref'].split "/"
  `fix --env=#{environment.last} node:all`
  

end
