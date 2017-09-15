class WikisController < ApplicationController
  def index
    @wikis = Wiki.all
  end

  def show
    @wiki = Wiki.find(params[:id])
  end

  def new
  end

  def edit
    @wiki = Wiki.find(params[:id])
  end
  
  def update
   @wiki = Wiki.find(params[:id])
   @wiki.title = params[:wiki][:title]
   @wiki.body = params[:wiki][:body]
 
   if @wiki.save
     flash[:notice] = "Wiki was updated."
     redirect_to wikis_path
   else
     flash.now[:alert] = "There was an error saving the wiki. Please try again."
     render :edit
   end
  end
end
