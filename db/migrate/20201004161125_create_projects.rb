class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :nombre
      t.text :descripcion
      t.date :fechainicio
      t.date :fechafin

      t.timestamps
    end
  end
end
