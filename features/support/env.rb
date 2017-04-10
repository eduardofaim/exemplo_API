require 'rspec'
require 'pry'
require 'faker'  
require 'httparty'
require 'open-uri'
require 'cucumber'
require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'

require_relative  '../../fixtures/factories/get_pesquisa_cep.rb'
require_relative  '../../fixtures/factories/post_criar_usuario.rb'

# Disable SSL verification
HTTParty::Basement.default_options.update(verify: false)

OpenSSL::SSL::VERIFY_PEER ||= OpenSSL::SSL::VERIFY_NONE


# Set Environment (default is prod)
ENV_LOCALE = ENV["ENVIRONMENT"] || "prod"
DEBUG = ENV['DEBUG'] || false

# Load config files
ENV_FILE = (YAML.load_file('./config/environment.yml'))

# Define configurations based on environment
ENVIRONMENT = ENV_FILE[ENV_LOCALE]