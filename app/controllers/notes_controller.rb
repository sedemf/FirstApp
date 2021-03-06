class NotesController < ApplicationController

  def index
  #@notes=Note.all
  
  if user_signed_in?
@notes = Note.where(user_id: current_user)
@incnotes = Note.incomplete.where(user_id: current_user)
  else
    @notes = []
    @incnotes = []
  end
  end
  
  def new 
  @note = Note.new 
  end 
 
  def create 

  @note = Note.new(note_params)
  if(@note.user_id != current_user.id)
       redirect_to root_path
  else 
    if @note.save 
      redirect_to notes_path 
    else 
      render 'new' 
    end 
  end
  end 
     
  def note_params
  params.require(:note).permit(:name, :body,:author,:date,:notecollection_id,:user_id)
  end
  
  def show
    @note = Note.find(params[:id])
  end
  
  def edit
    @note = Note.find(params[:id])
  end
  
  def update
    @note = Note.find(params[:id])
    if @note.update_attributes(note_params)
      redirect_to note_path(@note.id)
    else
      render 'edit'
    end
  end
  
  def destroy
    @note = Note.find(params[:id])
    @note.destroy
    redirect_to notes_path
  end
  
end
