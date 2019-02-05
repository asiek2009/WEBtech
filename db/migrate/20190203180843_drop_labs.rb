class DropLabs < ActiveRecord::Migration[5.1]
  def change
  	drop_table :labs
  end
end
