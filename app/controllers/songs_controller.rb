class SongsController < ApplicationController
  def new
    @song = Song.new
    render :new
  end

  def create
    @song = Song.new
    @song.user_id = current_user.id
    @song.name = params['song']['name']
    @song.url = params['song']['url']
    save_status = @song.save()
    if save_status == true
      redirect_to :songs_thanks
    elsif save_status == false
      render :new
    end
  end

  def thanks
    @name = Song.last.name
  end
end
