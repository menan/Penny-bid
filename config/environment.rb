# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Bidding::Application.initialize!

ActionMailer::Base.smtp_settings = {
:address => 'smtp.gmail.com',
:port => 587,
:domain => 'pennybid.heroku.com',
:authentication => :plain,
:user_name => 'menan89',
:password => 'Kadavul_123'
}