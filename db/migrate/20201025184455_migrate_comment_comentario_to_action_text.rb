class MigrateCommentComentarioToActionText < ActiveRecord::Migration[6.0]
  include ActionView::Helpers::TextHelper
  def change
    rename_column :comments, :comentario, :comentario_old
    Comment.all.each do |comment|
      comment.update_attribute(:comentario, simple_format(comment.comentario_old))
    end
    remove_column :comments, :comentario_old
  end
end