source 'https://rubygems.org'
ruby '2.3.1'

# Application
gem 'rails', '4.2.6'
gem 'pg', '~> 0.19.0'
gem 'jbuilder', '~> 2.0'
gem 'sprig', '~> 0.2.0'
gem 'has_scope', '~> 0.7.0'
gem 'stripe'
gem 'sdoc', '~> 0.4.0', group: :doc

# Assets
gem 'sass-rails', '~> 5.0'
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.7'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'

# Authentication

group :development do
  gem 'web-console', '~> 2.0'
  gem 'spring'
  gem 'letter_opener_web'
end

group :development, :test do
  gem 'sqlite3'
  gem 'byebug'
  gem 'rspec-rails', '~> 3.5', '>= 3.5.2'
  gem 'factory_girl_rails', '~> 4.7'
end

group :test do
  gem 'shoulda-matchers', '~> 3.1', '>= 3.1.1'
  gem 'faker', '~> 1.6'
  gem 'database_cleaner', '~> 1.5'
  gem 'launchy', '~> 2.4'
end

group :production do
  gem 'rails_12factor', '~> 0.0.3'
end
