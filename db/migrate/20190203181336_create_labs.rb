class CreateLabs < ActiveRecord::Migration[5.1]
  def change
    create_table :labs do |t|
      t.string :name
      t.string :attachment

      t.timestamps
    end
  end
end
