class AddColumnsToLabs < ActiveRecord::Migration[5.1]
  def change
  	add_column :labs, :number, :integer
  	add_column :labs, :subject, :string
  end
end
