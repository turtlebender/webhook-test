require 'sinatra'
require "json"

post '/webhook-test' do

  push = JSON.parse(params[:payload])
  environment = push['ref'].split "/"
  puts "updating git"
  `git pull`
  puts "deploying nodes for #{environment.last} environment"
  `fix --env=#{environment.last} node:all`
    

end
