# frozen_string_literal: true
class MessageMailer < ApplicationMailer
  default template_path: 'mailers'

  def new_message(message)
    @message = message

    mail subject: "Message from #{message.email}"
  end
end
