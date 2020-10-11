class AddProjectToMaterium < ActiveRecord::Migration[6.0]
  def change
    add_reference :materia, :project, null: false, foreign_key: true, :default => 1
  end
end
