class RemoveSubjectFromLectures < ActiveRecord::Migration[5.1]
  def change
  	remove_column :lectures, :subject, :string
  end
end
