class AddUserToRunners < ActiveRecord::Migration
  def change
    add_reference :runners, :user, index: true, foreign_key: true
  end
end
