# frozen_string_literal: true
class Message < ApplicationRecord
  validates :email, email_format: { message: "can't be blank or invalid" }
  validates :body, presence: true
end
