require 'rspec'
require 'capybara/cucumber'
require 'site_prism'
require 'pry'

#Responsavel pela configuração do driver 
Capybara.register_driver :site_prism do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

#Responsavel pela configuração do driver 
Capybara.configure do |config|
  config.run_server = false
  Capybara.default_driver = :site_prism
  Capybara.page.driver.browser.manage.window.maximize
  config.default_max_wait_time = 10
  config.app_host = 'http://www.fleury.com.br'
end

#Responsavel pela configuração do arquivo de massa de dados
MASSA = YAML.load_file(File.dirname(__FILE__) + '/data/massa.yml')