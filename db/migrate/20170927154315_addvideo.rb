class Addvideo < ActiveRecord::Migration[5.0]
  def change
    add_column :contrats, :video, :boolean
     add_column :contrats, :periodeessai, :boolean
  end
end
