class CreateJavalabs < ActiveRecord::Migration[5.1]
  def change
    create_table :javalabs do |t|
      t.integer :number
      t.string :name
      t.string :attachment

      t.timestamps
    end
  end
end
