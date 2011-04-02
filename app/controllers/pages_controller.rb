class PagesController < ApplicationController
  def home
    @videos = Video.order_by_desc(:created_at).page(params[:page]).per(5)

  end
end
