source 'http://rubygems.org'


gem 'rails', '4.1.8'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'therubyracer',  platforms: :ruby
gem 'bootstrap-sass'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'bcrypt', '~> 3.1.7'

gem 'elasticsearch-model'
gem 'elasticsearch-rails'
gem 'bonsai-elasticsearch-rails'

gem 'mandrill-api'



# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin]


group :doc do
  gem 'sdoc', require: false
end

group :development, :test do
  gem 'quiet_assets'
  gem 'pry'
  gem 'sqlite3'
  gem 'rspec-rails', '~> 3.1.0'
  gem 'factory_girl_rails', '~> 4.5.0'
  gem 'dotenv-rails'
end

group :test do
  gem 'faker', '~> 1.4.3'
  gem 'capybara', '~> 2.4.3'
  gem 'database_cleaner', '~> 1.3.0'
  gem 'launchy', '~> 2.4.2'
  gem 'selenium-webdriver', '~> 2.43.0'
  gem 'shoulda-matchers', '~> 2.8.0'
  gem 'elasticsearch-extensions'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end