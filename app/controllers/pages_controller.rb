class PagesController < ApplicationController
  def forwarder
    if current_user.round_lead == true
      redirect_to :rounds_new
    else
      redirect_to :songs_new
    end
  end
  def wait
    # Bitte Rundenlead nerven
  end
end
