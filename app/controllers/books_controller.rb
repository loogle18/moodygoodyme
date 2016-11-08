class BooksController < ApplicationController
  def index
  end

  def download
    send_file(
      Rails.root.join('public', 'books', file_name),
      filename: file_name,
      type: 'application/pdf'
    )
  end

  private

  def file_name
    [params[:name], '.pdf'].join
  end
end
