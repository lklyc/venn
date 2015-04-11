class PagesController < ApplicationController
  def home
    @polls = Poll.all.order(created_at: :desc).limit(3)
  end

end