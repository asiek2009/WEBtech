class AddNumberToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :number, :integer
  end
end
