class RemoveSubjectFromLabs < ActiveRecord::Migration[5.1]
  def change
    remove_column :labs, :subject, :string
  end
end
