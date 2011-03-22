class Admin::VideosController < Admin::ApplicationController

  inherit_resources

  def create
    @video = Video.new(params[:video])
    @video.folder = current_folder

    create! do |success, failure|
      success.html{
        redirect_to_folder
      }
    end
  end

  def destroy
    destroy! do |success, failure|
      success.hmtl{
        redirect_to_folder
      }
    end
  end

  protected

  def current_folder
    Folder.where(:id => params[:folder_id]).first
  end

  def redirect_to_folder
    if current_folder
      redirect_to admin_folder_path(current_folder)
    else
      redirect_to admin_folder_path
    end
  end
end
