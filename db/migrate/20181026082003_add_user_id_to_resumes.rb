class AddUserIdToResumes < ActiveRecord::Migration[5.2]
  def change
    add_column :resumes, :user_id, :integer
  end
end
