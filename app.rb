require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/results' do
    sentence = params[:sentence]
    @pig_latinized = to_pig_latin(sentence)

    erb :results
  end
end
