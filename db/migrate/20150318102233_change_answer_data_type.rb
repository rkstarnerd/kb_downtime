class ChangeAnswerDataType < ActiveRecord::Migration
  def change
    change_column :articles, :answer, :text
  end
end
