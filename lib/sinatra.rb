require 'sinatra/base'

class Site < Sinatra::Application

  get '/' do
    'Hello world!'
  end

end
