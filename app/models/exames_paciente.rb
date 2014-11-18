class ExamesPaciente < ActiveRecord::Base
  belongs_to :medico
  belongs_to :paciente
  belongs_to :exame
end
