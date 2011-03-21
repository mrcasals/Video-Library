class FoldersController < AdminController

  inherit_resurces
  belongs_to :folder, optional: true

end
