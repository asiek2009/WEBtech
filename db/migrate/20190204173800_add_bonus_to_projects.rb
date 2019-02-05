class AddBonusToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :bonus, :boolean
  end
end
