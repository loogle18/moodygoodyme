class ContactsController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.json {
        render json: { html: render_to_string('contacts/index') }
      }
    end
  end
end
