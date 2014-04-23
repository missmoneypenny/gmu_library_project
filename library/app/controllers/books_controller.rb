class BooksController < ApplicationController
  def index
  @available_at = Time.now
  end

end
