class ApplicationMailer < ActionMailer::Base
  default from: ENV["DEFAULT_FROM_EMAIL"]
  default from: "example@example.com" if Rails.env.test?
  layout 'mailer'
end
