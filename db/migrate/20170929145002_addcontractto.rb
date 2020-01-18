class Addcontractto < ActiveRecord::Migration[5.0]
  def change
   add_reference :contrats, :user, foreign_key: true
  end
end
