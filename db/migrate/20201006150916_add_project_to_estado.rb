class AddProjectToEstado < ActiveRecord::Migration[6.0]
  def change
    add_reference :estados, :project, null: false, foreign_key: true, :default => 1
  end
end