class CreateBikes < ActiveRecord::Migration
  def change
    create_table :bikes do |t|
      t.string :model
      t.string :make
      t.string :type
      t.decimal :frame_size
      t.string :color
      t.string :serial_number
      t.string :purchased_from

      t.timestamps null: false
    end
  end
end
