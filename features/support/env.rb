require 'httparty'
require 'httparty/request'
require 'httparty/response/headers'
require 'cucumber'

ENVIRONMENT = 'qa'
CONFIG = YAML.load_file(File.dirname(__FILE__) + "/config/#{ENVIRONMENT}.yml")

require_relative '../services/services'
