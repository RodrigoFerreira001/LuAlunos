local classes = require "classes"
local Aluno = require "Aluno"

local Matricula = classes.class()

function Matricula:init (numero, aluno, periodo)
	self.numero = numero
	self.aluno = aluno
	self.periodo = periodo
	self.disciplinas = {}
end

function Matricula:set_numero(numero)
	self.numero = numero
end

function Matricula:get_numero()
	return self.numero
end

function Matricula:set_aluno(aluno)
	self.aluno = aluno
end

function Matricula:get_aluno()
	return self.aluno
end

function Matricula:set_periodo(periodo)
	self.periodo = periodo
end

function Matricula:get_periodo()
	return self.periodo
end

function Matricula:add_disciplina(disciplina)
	table.insert(self.disciplinas, disciplina)
end

function Matricula:remove_disciplina(disciplina)
	table.remove(self.disciplinas, disciplina)
end

function Matricula:get_disciplinas()
	return self.disciplinas
end

function Matricula:get_valor_total()
	local valor_total = 0

	if(#self.disciplinas == 0) then
		return valor_total
	else
		for i, element in pairs(disciplinas) do
			valor_total = valor_total + element:get_valor()
		end
		return valor_total
	end
end

return Matricula
