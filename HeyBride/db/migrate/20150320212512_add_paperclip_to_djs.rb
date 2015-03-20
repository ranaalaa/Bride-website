class AddPaperclipToDjs < ActiveRecord::Migration
  def change
    add_attachment :djs, :image  
  end
end
