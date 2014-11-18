class CreateMedicos < ActiveRecord::Migration
  def change
    create_table :medicos do |t|
      t.string :nome
      t.string :crm
      t.string :endereco
      t.string :cidade
      t.string :uf
      t.string :telefone
      t.string :email

      t.timestamps
    end
  end
end
