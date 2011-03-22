class VideosController < ApplicationController

  inherit_resources
  actions :index, :show

  def collection
    @videos ||= end_of_association_chain.last_published(5)
  end

end
