class CreateNewspapers < ActiveRecord::Migration
  def change
    create_table :newspapers do |t|
      t.string :title
      t.string :editor_fname
      t.string :editor_lname
      
      t.timestamps
    end
  end
end
