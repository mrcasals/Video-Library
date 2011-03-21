class VideosController < ApplicationController

  inherit_resources only: [:index, :show]

end
