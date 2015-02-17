require 'rubygems'
require 'bundler'
Bundler.require

require 'sprockets'
map '/assets' do
  sprockets = Sprockets::Environment.new
  sprockets.append_path 'assets/stylesheets'
  sprockets.append_path 'assets/images'
  run sprockets
end

require './harshit_and_heta'
run HarshitAndHeta
