class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :subject
      t.string :name
      t.string :attachment

      t.timestamps
    end
  end
end
