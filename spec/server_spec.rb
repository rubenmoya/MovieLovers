require_relative '../server'
require 'rspec'
require 'rack/test'

RSpec.describe 'Sinatra server' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

end
