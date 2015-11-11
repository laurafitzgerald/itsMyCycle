class CreateRunners < ActiveRecord::Migration
  def change
    create_table :runners do |t|
      t.string :nickname
      t.string :brand
      t.string :make

      t.timestamps null: false
    end
  end
end
