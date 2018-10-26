class AddUserIdToResumes < ActiveRecord::Migration[5.2]
  def change
    add_column :resumes, :user_id, :interger
  end
end
