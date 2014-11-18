json.array!(@exames_pacientes) do |exames_paciente|
  json.extract! exames_paciente, :id, :medico_id, :paciente_id, :exame_id, :quantidade, :valor
  json.url exames_paciente_url(exames_paciente, format: :json)
end
