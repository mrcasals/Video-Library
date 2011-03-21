class FoldersController < Admin::ApplicationController

  inherit_resurces
  belongs_to :folder, :optional => true

end
