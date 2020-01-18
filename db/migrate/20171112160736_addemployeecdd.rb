class Addemployeecdd < ActiveRecord::Migration[5.0]
  def change
    add_reference :contratcdds, :employee, foreign_key: true

  end
end
