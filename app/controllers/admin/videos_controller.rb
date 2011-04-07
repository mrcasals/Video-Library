class Admin::VideosController < Admin::ApplicationController

  inherit_resources

  def update
    update!{
      url_for :action => :edit
    }
  end

  def create
    @video = Video.new(params[:video])
    @video.user = current_user


    create! do |success, failure|
      success.html{
        redirect_to_folder @video.folder
      }
    end
  end

  def destroy
    @video = Video.find(params[:id])
    folder = @video.folder

    destroy! do |success, failure|
      success.html{
        redirect_to_folder folder
      }
    end
  end

  protected

  def redirect_to_folder(current_folder = nil)
    if current_folder
      redirect_to admin_folder_path(current_folder)
    else
      redirect_to admin_dashboard_path
    end
  end
end
