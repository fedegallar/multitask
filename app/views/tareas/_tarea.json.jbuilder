json.extract! tarea, :id, :descripcion, :materium_id, :estado_id, :created_at, :updated_at
json.url tarea_url(tarea, format: :json)
