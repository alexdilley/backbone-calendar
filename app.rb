require "rubygems"
require "bundler"
Bundler.setup(:default, ENV["RACK_ENV"])

require "sinatra"

configure :production do
  require "newrelic_rpm"
end

get "/" do
  "hello, world!"
end
