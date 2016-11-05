# frozen_string_literal: true
class Message < ApplicationRecord
  validates :email, email_format: { message: 'should contain valid email' }
  validates :body, presence: { message: 'should contain your message' }
end
