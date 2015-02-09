class ChangeVdnDataType < ActiveRecord::Migration
  def change
    change_column :articles, :vdn, :string
  end
end
