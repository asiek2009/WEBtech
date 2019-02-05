class DropLectures < ActiveRecord::Migration[5.1]
  def change
  	  	drop_table :lectures
  end
end
