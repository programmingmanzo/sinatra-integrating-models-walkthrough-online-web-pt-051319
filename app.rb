require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

=begin
  post '/' do
    text_from_user = params[:user_text]
    
    @analyzed_text = TextAnalyzer.new(text_from_user)
=end
    
  post '/' do #We shortened the above to this below:
  @analyzed_text = TextAnalyzer.new(params[:user_text])

    erb :results
  end
end
