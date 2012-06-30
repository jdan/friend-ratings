class RatingsController < ApplicationController

  # ajax
  def create
    @rating = Rating.create(params[:rating])

    respond_to do |format|
      if @rating.save
        format.js
      else
        format.js { render :js => "alert('oh no!')" }
      end
    end

  end


end
