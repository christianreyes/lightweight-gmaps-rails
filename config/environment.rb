# Load the rails application
require File.expand_path('../application', __FILE__)

#for quickfix, add following lines to "environment.rb":

require 'openssl'
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

#make sure that you remove those lines after you install jquery-rails

# Initialize the rails application
GoogleMapsRails::Application.initialize!
