# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = { 
 :user_name => 'apikey',
 :password => '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',
 :domain => 'sendgrid.com',
 :address => 'smtp.sendgrid.net',
 :port => 587,  
 :authentication => :plain, 
 :enable_starttls_auto => true
}
