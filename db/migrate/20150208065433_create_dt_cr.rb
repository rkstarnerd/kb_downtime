class CreateDtCr < ActiveRecord::Migration
  def change
    create_table :dt_crs do |t|
      t.string :z_number
      t.integer :user_id

      t.timestamps
    end
  end
end
