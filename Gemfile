source 'https://rubygems.org'
ruby '2.1.0'

gem 'rails', '4.0.4'
gem 'thin', '1.6.2'



group :development, :test do
  gem 'sqlite3', '1.3.8'

  gem 'debugger'
  
  #gem 'mysql2', '~> 0.3.15'
  #if you need to, remove this
  gem 'populator'
  gem 'faker'
  

  
  gem 'rspec-rails', '2.13.1'
  gem 'better_errors'
  gem 'rails-erd'
  gem 'activerecord-session_store'
  gem 'best_in_place', github: 'bernat/best_in_place', branch: 'rails-4'

end

group :test do
  gem 'selenium-webdriver', '2.35.1'
  gem 'capybara', '2.1.0'
  gem 'factory_girl', '~> 4.4.0'
  gem 'factory_girl_rails', '~> 4.4.1'
  gem 'simplecov', '~> 0.7.1'
end

gem 'jquery-rails', '3.0.4'
gem "jquery-ui-rails"

gem 'jquery-datatables-rails', git: 'git://github.com/rweng/jquery-datatables-rails.git'

gem 'binding_of_caller', '~> 0.7.2'

gem 'sass-rails', '~> 4.0.0'

gem 'colorbox-rails', '~> 0.1.1'
gem 'bootstrap-sass', '~> 3.1.1.0'
gem 'sprockets', '2.11.0'

gem 'omniauth-facebook'

gem 'uglifier', '2.1.1'
gem 'coffee-rails', '4.0.1'

gem 'turbolinks', '1.1.1'
gem 'jbuilder', '1.0.2'

gem 'musicbrainz', '~> 0.7.6'
gem 'lastfm', '~> 1.24.0'

gem 'activerecord-session_store'

#gem 'mysql2', '~> 0.3.15'

#gem "flat-ui-rails"

group :doc do
  gem 'sdoc', '0.3.20', require: false
end

#for deployment to heroku
group :production do
  #gem 'mysql2', '~> 0.3.15'
  gem 'pg', '0.15.1'
  gem 'rails_12factor', '0.0.2'
end
