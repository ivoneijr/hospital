class CreateExames < ActiveRecord::Migration
  def change
    create_table :exames do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
