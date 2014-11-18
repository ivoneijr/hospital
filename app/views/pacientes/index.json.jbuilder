json.array!(@pacientes) do |paciente|
  json.extract! paciente, :id, :cpf, :nome, :endereco, :cidade, :uf, :dtnascto
  json.url paciente_url(paciente, format: :json)
end
