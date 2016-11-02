# frozen_string_literal: true
class Message < ApplicationRecord
  validates_presence_of :email, :body
end
