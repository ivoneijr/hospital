json.array!(@medicos) do |medico|
  json.extract! medico, :id, :nome, :crm, :endereco, :cidade, :uf, :telefone, :email
  json.url medico_url(medico, format: :json)
end
