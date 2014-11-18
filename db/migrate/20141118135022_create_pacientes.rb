class CreatePacientes < ActiveRecord::Migration
  def change
    create_table :pacientes do |t|
      t.string :cpf
      t.string :nome
      t.string :endereco
      t.string :cidade
      t.string :uf
      t.date :dtnascto

      t.timestamps
    end
  end
end
