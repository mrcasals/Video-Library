class PagesController < ApplicationController
  def home
    @videos = Video.last_published(5)

  end
end
