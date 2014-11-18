class CreateExamesPacientes < ActiveRecord::Migration
  def change
    create_table :exames_pacientes do |t|
      t.references :medico, index: true
      t.references :paciente, index: true
      t.references :exame, index: true
      t.integer :quantidade
      t.decimal :valor

      t.timestamps
    end
  end
end
