class CreateDataFiles < ActiveRecord::Migration
  def change
    create_table :data_files do |t|

      t.timestamps null: false
      t.references :user
    end
  end

 
end
