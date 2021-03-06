require 'bundler'
Bundler.require

require './app'

Dotenv.load

RakutenWebService.configuration do |c|
  c.application_id = ENV['APPLICATION_ID']
  c.affiliate_id = ENV['AFFILIATE_ID']
end

run Sinatra::Application
