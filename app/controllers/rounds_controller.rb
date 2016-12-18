class RoundsController < ApplicationController
  def new
    if current_user.round_lead == true
      @round = Round.new
      render :new
    ## hier noch ein elsif fuer den fall das die vorige Runde abgelaufen ist
    else
      redirect_to :songs_new
    end
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
