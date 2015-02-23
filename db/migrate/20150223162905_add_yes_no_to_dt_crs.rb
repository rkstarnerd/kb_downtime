class AddYesNoToDtCrs < ActiveRecord::Migration
  def change
    add_column :dt_crs, :plan_24_yes, :boolean
    add_column :dt_crs, :plan_24_no, :boolean
  end
end
