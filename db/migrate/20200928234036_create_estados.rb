class CreateEstados < ActiveRecord::Migration[6.0]
  def change
    create_table :estados do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
