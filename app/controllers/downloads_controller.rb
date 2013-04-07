class DownloadsController < ApplicationController

  def new
    @download = Download.new
  end

  def create
    @download = Download.new(params[:download])
    if @download.save
      flash[:notice] = @download.filename
    else
      flash[:error] = "You didn't fill everything out!"
    end
    redirect_to new_download_path
  end
end
