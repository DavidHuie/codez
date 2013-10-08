$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'rspec'
require 'codez'

Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }
