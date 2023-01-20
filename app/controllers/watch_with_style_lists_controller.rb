class WatchWithStyleListsController < ApplicationController
  def index
    @lists = WatchWithStyleList.all
    @list = WatchWithStyleList.new
  end

  def show
    @bookmark = WatchWithStyleBookmark.new
    @list = WatchWithStyleList.find(params[:id])
  end

  def new
    @list = WatchWithStyleList.new
  end

  def create
    @list = WatchWithStyleList.new(list_params)
    if @list.save
      redirect_to watch_with_style_watch_with_style_lists_path
    else
      render :new
    end
  end

  private

  def list_params
    params.require(:watch_with_style_list).permit(:name, :photo)
  end
end
