class RatingsController < ApplicationController

  # ajax
  def create
    @rating = Rating.create(params[:rating])
    @rating.ip = request.remote_ip
    @rating.rating = params[:score].to_f

    respond_to do |format|
      if @rating.save
        format.js
      else
        format.js { render :js => "alert('oh no!')" }
      end
    end

  end


end
