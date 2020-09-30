class AddFechaFinToTareas < ActiveRecord::Migration[6.0]
  def change
    add_column :tareas, :FechaFin, :date
  end
end
