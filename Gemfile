source 'https://rubygems.org'

gem 'rails', '3.2.2'
gem 'sqlite3'
gem 'jquery-rails'
gem 'paperclip'

group :development, :test do
  gem 'rspec-rails'
  gem 'guard-rspec'
  gem 'cucumber-rails', :require => false
  gem 'gherkin', '<= 2.11.6'
end

group :test do
  gem 'shoulda'
  gem 'factory_girl_rails'
  gem 'fuubar'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'simplecov'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer'

  gem 'uglifier', '>= 1.0.3'
end
