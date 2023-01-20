class WatchWithStyleBookmarksController < ApplicationController
  def new
    @bookmark = WatchWithStyleBookmark.new
  end

  def create
    @list = WatchWithStyleList.find(params[:watch_with_style_list_id])
    @bookmark = WatchWithStyleBookmark.new(bookmark_params)
    @bookmark.watch_with_style_list = @list
    if @bookmark.save
      redirect_to watch_with_style_watch_with_style_list_path(@list)
    else
      render 'watch_with_style_lists/show'
    end
  end

  def destroy
    @bookmark = WatchWithStyleBookmark.find(params[:id])
    @bookmark.delete
    redirect_to watch_with_style_watch_with_style_list_path(@bookmark.watch_with_style_list)
  end

  private
  
  def bookmark_params
    params.require(:watch_with_style_bookmark).permit(:comment, :watch_with_style_movie_id)
  end
end
