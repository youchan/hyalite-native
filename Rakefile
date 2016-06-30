# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'

begin
  require 'bundler'
  Bundler.require
rescue LoadError
end

$:.unshift(File.expand_path('../app', __FILE__))
require File.expand_path('../app/hyalite', __FILE__)

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'hyalite-native'
end
