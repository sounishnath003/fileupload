class AddResumeIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :resume_id, :integer
  end
end
