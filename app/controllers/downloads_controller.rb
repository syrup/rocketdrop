class DownloadsController < ApplicationController

  def new
    @download = Download.new
  end

  def show
    @download = Download.find_by_id(params[:id])
    redirect_to root_path, :error => "Download not found" if @download.nil?
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
