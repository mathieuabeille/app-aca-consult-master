class Addusercontratcdd < ActiveRecord::Migration[5.0]
  def change
        add_reference :contratcdds, :user, foreign_key: true

  end
end
