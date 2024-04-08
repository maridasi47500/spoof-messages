class ApplicationMailer < ActionMailer::Base
  default from: ENV['EMAIL']
  layout "mailer"
end
