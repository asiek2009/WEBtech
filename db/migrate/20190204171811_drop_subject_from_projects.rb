class DropSubjectFromProjects < ActiveRecord::Migration[5.1]
  def change
  	remove_column :projects, :subject, :string
  end
end
