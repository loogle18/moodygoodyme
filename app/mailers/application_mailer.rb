# frozen_string_literal: true
class ApplicationMailer < ActionMailer::Base
  default from: 'noreply@moodygoody.me',
          to: 'sviat.minato@gmail.com',
          layout: 'mailer'
end

