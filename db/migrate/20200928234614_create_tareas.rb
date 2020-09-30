class CreateTareas < ActiveRecord::Migration[6.0]
  def change
    create_table :tareas do |t|
      t.string :descripcion
      t.references :materium, null: false, foreign_key: true
      t.references :estado, null: false, foreign_key: true

      t.timestamps
    end
  end
end
