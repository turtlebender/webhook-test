require 'sinatra'
require "json"

post '/webhook-test' do

  push = JSON.parse(params[:payload])
  environment = push['ref'].split "/"
  puts "updating #{environment.last} nodes"
  `fix --env=#{environment.last} node:all`
    

end
