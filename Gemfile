source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.5'

gem 'pg'
gem 'puma'
gem 'rails', '~> 6.1.4'

gem 'bootsnap', require: false
gem 'composite_primary_keys'

# gem 'sass-rails'
# gem 'turbolinks'
# gem 'webpacker'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails'
  gem 'faker'

  gem 'flamegraph'
  gem 'memory_profiler'
  gem 'rack-mini-profiler'
  gem 'stackprof'

  gem 'bullet'
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
