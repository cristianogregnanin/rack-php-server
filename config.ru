require 'rubygems'
require 'bundler'

Bundler.setup

require 'rack'
require 'rack-legacy'

use Rack::ShowExceptions
use Rack::Legacy::Index
use Rack::Legacy::Php
run Rack::File.new Dir.getwd
