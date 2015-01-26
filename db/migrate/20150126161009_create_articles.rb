class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :client_name, :question, :answer
      t.integer :vdn, :user_id

      t.timestamps
    end
  end
end
