class CreateJavalectures < ActiveRecord::Migration[5.1]
  def change
    create_table :javalectures do |t|
      t.integer :number
      t.string :name
      t.string :attachment

      t.timestamps
    end
  end
end
