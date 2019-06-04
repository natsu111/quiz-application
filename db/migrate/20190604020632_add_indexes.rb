class AddIndexes < ActiveRecord::Migration[5.1]
  def change
    add_index :users, :name
    
    add_index :quizzes, [:user_id, :created_at]
  end
end
