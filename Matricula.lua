local classes = require "classes"
local Aluno = require "Aluno"

local Matricula = classes.class()

function Matricula:init (numero, aluno, periodo)
	self.numero = numero
	self.aluno = aluno
	self.periodo = periodo
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

return Matricula
