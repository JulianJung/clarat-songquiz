class RoundsController < ApplicationController
  def new
    @round = Round.new
    render :new
  end

  def create
    @round = Round.new(params.require("round").permit('topic'))
    save_status = @round.save()
    if save_status == true
      flash[:success] = "Runden-Thema Erfolgreich angelegt!"
      redirect_to :songs_new
    elsif save_status == false
      render :new
    end
  end
end
