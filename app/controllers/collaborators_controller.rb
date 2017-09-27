class CollaboratorsController < ApplicationController
  
    
  def new
    @coll = Collaborator.new
  end

  def create
 # #9
    @coll = Collaborator.new(wiki_id: params[:wiki_id], user_id: params[:user_id])



 # #10
    if @coll.save
 # #11
       flash[:notice] = "Collaborator was added."
       redirect_to wikis_path
    else
 # #12
       flash.now[:alert] = "There was an error creating the collaborator. Please try again."
       render :new
    end
  end
  
  
  def destroy
      
     @coll = Collaborator.find(params[:id])
 
 # #8
     if @coll.destroy
       flash[:notice] = "\"#{@coll.user_id}\" was deleted successfully."
       redirect_to wikis_path
     else
       flash.now[:alert] = "There was an error deleting the collaborator."
       render :new
     end
  end
  
  
  
end
