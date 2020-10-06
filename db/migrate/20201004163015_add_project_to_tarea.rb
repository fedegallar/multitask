class AddProjectToTarea < ActiveRecord::Migration[6.0]
  def change
    add_reference :tareas, :project, null: false, foreign_key: true
  end
end


"
EN CASO DE TENER UNA TABLA DE TAREAS EXISTENTE. MYSQL NO PERMITE LA CREACION DE UNA TABLA
CON CLAVES FORANEAS NULA, POR DEFECTO SETEA UN 0 PERO RESULTA QUE LANZA UN ERROR AL QUERER HACER
LA MIGRACIÓN. POR LO TANTO ES NECESARIO AGREGAR :default =><ID DEL PROYECTO> PARA QUE USE EL PROYECTO
EXISTENTE Y CORRA SIN PROBLEMAS!

def change
  add_reference :tareas, :project, null: false, foreign_key: true, :default => 1
end

"