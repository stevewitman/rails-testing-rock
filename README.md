rails new rock -T
cd rock/
git init
git add .
git commit -m "initial commit"
atom .
bundle
bin/rails g rspec:install
bundle exec spring binstub --all

spec/features/home_page_spec.rb
bin/rspec
gem 'bootstrap-sass'
bundle
rails g model achievement title description:text privacy:integer featured:boolean cover_image
rake db:migrate

gem 'simple_form'
bundle

rails g simple_form:install --bootstrap

installing Cucumber...
group :test do
  gem 'cucumber-rails', require: false
  gem 'database_cleaner'
end
group :development, :test do
  gem 'spring-commands-cucumber'
end
bundle
bundle exec spring binstub --all
bin/rails g cucumber:install
bin/cucumber
!!! uninitialized constant FactoryGirl (NameError)
!!! MOVED gem 'factory_girl_rails' to group :development, :test

### installing Devise ...

```ruby
gem 'devise'
```
```
bundle install
```
```
bin/rails g devise:install
```
Follow onscreen directions ingluding copy `config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }` and paste at bottom of `config/environments/development.rb` and `.../test.rb`
```
bin/rails g devise user
```
```
bin/rake db:migrate
```
in `spec/factories/user` add lines for sequence and password.

```ruby
FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "email#{n}@email.com" }
    password "test"
  end
end
```

in `spec/rails_helper` after `require 'rspec/rails'` add ...

```ruby
require 'devise'
```

in `spec/rails_helper` after   `config.infer_spec_type_from_file_location!` add ...

```ruby
  config.include Devise::TestHelpers, type: :controller
```
