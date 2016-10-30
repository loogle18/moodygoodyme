# frozen_string_literal: true
class ContactsController < ApplicationController
  def new
    @message = Message.new
    respond_to do |format|
      format.html
      format.json {
        render json: @message
      }
    end
  end

  def create
    @message = Message.new(message_params)

    if @message.save
      MessageMailer.new_message(@message).deliver
      render json: { msg: 'I will reply you as soon as possible!', redirect_to: 'root_path'}
    else
      render json: { msg: @message.errors.full_messages.join(', ') }, status: 401
    end
  end

  private

  def message_params
    params.require(:message).permit(:email, :body)
  end
end
