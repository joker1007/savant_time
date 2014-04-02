source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.0.rc2'

gem 'sqlite3'

# Gems used only for assets and not required
# in production environments by default.
gem 'sass-rails',   '~> 4.0.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'bootstrap-sass'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

gem 'uglifier', '>= 1.3.0'

gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
gem 'jquery-turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder'
gem "haml-rails"

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
gem 'unicorn'

group :development do
  gem "rails3-generators", :git => "git://github.com/indirect/rails3-generators.git", :group => [:development]
  gem "i18n_generators"

  gem "binding_of_caller"
  gem "better_errors"
end

group :development, :test do
  gem "rspec", "~> 2.11"
  gem "rspec-rails", "~> 2.11"
  gem "spring"
  gem 'spring-commands-rspec'

  gem "capybara"
  gem "poltergeist"

  gem "minitest"
  gem "launchy"

  gem "awesome_print"
  gem "tapp"

  gem "libnotify", :require => RUBY_PLATFORM.downcase =~ /linux/ ? "libnotify" : false
  gem "rb-inotify", :require => RUBY_PLATFORM.downcase =~ /linux/ ? "rb-inotify" : false
  gem "ruby_gntp", :require => RUBY_PLATFORM.downcase =~ /linux/ ? "ruby_gntp" : false
  gem "rb-fsevent", :require => RUBY_PLATFORM.downcase =~ /darwin/ ? "rb-fsevent" : false
end

group :test do
  gem "delorean"
  gem "database_rewinder"
end

gem 'fog', '>= 1.12'
gem 'pry-rails'
gem 'byebug'
gem "factory_girl_rails"
gem 'oj'
gem "settingslogic"

gem 'sidekiq'

gem 'active_decorator'
gem 'kaminari'

gem 'treehash'
