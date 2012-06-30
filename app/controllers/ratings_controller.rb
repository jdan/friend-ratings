class RatingsController < ApplicationController

  def create
    @rating = Rating.create(params[:rating])
    @rating.ip = request.remote_ip
    @rating.rating = params[:score].to_f

    respond_to do |format|
      if @rating.save
        format.html { redirect_to @rating.page, :notice => "Rating successfully created" }
      else
        # TODO: render a new page with the form and validation errors
        format.html { redirect_to @rating.page }
      end
    end

  end


end
