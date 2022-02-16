source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.5'

gem 'pg'
gem 'puma'
gem 'rails', '~> 6.1.4'

gem 'bootsnap', require: false
gem 'composite_primary_keys'

gem 'sass-rails'
gem 'turbolinks'
gem 'webpacker'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem 'benchmark-bigo'
  gem 'benchmark-ips'

  gem 'fasterer'
  gem 'rubocop'
  gem 'rubocop-rails'
  gem 'web-console'

  gem 'listen'
  gem 'spring'
end
