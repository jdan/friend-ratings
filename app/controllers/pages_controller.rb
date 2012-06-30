class PagesController < ApplicationController

  before_filter :get_page, :only => [:show, :edit, :update, :destroy]

  def get_page
    @page = Page.find(params[:id])
  end

  def new
    @page = Page.new
  end
  def create
    @page = Page.new(params[:page])
    @page.ip = request.remote_ip

    respond_to do |format|
      if @page.save
        format.html { redirect_to @page, :notice => "Page successfully created" }
      else
        flash.now.alert = "Page could not be created"
        render :new
      end
    end
  end

  def show
  end

  def edit
  end
  def update
    respond_to do |format|
      if @page.update_attributes(params[:page])
        format.html { redirect_to @page, :notice => "Page successfully updated" }
      else
        flash.now.alert = "Page could not be updated"
        render :edit
      end
    end

  end

  def destroy
    respond_to do |format|
      if @page.destroy
        format.html { redirect_to root_path, :notice => "Page destroyed!" }
      else
        format.html { redirect_to @page, :alert => "Could not destroy page" }
      end
    end
  end

end
