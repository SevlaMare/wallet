source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# core
ruby '2.6.6'
gem 'puma', '~> 3.11'
gem 'rails', '~> 5.2.4', '>= 5.2.4.3'

# assets
gem 'coffee-rails', '~> 4.2'
gem 'jbuilder', '~> 2.5'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'

# cache
gem 'bootsnap', '>= 1.1.0', require: false
gem 'turbolinks', '~> 5'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'sqlite3', '~> 1.4', '>= 1.4.2'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring', '~> 1.7', '>= 1.7.2'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'

  gem 'better_errors', '~> 2.8'
  gem 'binding_of_caller', '~> 0.8.0'
  gem 'rubocop', '~> 0.87.0'
end

group :test do
  gem 'rspec-rails', '~> 4.0', '>= 4.0.1'

  gem 'capybara', '>= 2.15'
  gem 'database_cleaner', '~> 1.8', '>= 1.8.5'
  gem 'webdrivers', '~> 4.4', '>= 4.4.1'
end

group :production do
  gem 'pg', '~> 1.2', '>= 1.2.3'
end

# Windows compatible
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
