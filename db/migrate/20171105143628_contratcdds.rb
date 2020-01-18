class Contratcdds < ActiveRecord::Migration[5.0]
  def change
    drop_table :contratcdd
    add_column :contratcdds, :debut, :date
     add_column :contratcdds, :fin, :date
     add_column :contratcdds, :remuneration, :string
     add_column :contratcdds, :poste, :string
     add_column :contratcdds, :heurehebdo, :string
      add_column :contratcdds, :video, :boolean

    add_column :contratcdds, :periodeessai, :boolean

  end
end
