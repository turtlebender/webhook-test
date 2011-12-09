require 'sinatra'


post '/webhook-test' do

  puts request.body.read()

end
