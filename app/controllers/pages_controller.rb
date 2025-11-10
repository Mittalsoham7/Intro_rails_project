class PagesController < ApplicationController
  def about
  end

  def home
  end

  def download_csv
    send_file Rails.root.join('lib', 'books.csv'), type: 'text/csv', disposition: 'attachment'
  end
end
