class Comment < ApplicationRecord
  belongs_to :tarea
  has_rich_text :comentario
end
