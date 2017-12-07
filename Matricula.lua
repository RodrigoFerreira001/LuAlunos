require "Aluno"

Matricula = {numero = 0, aluno = "", periodo = ""}

function Matricula:new (numero, aluno, periodo)
	setmetatable({}, Matricula)

	self.numero = numero
	self.aluno = aluno
	self.periodo = periodo

	return self
end

-- Setters
function Matricula:setNumero(numero)
		self.numero = numero
end
function Matricula:setAluno(aluno)
		self.aluno = aluno
end
function Matricula:setPeriodo(periodo)
		self.periodo = periodo
end

-- Getters
function Matricula:getNumero()
		return self.numero
end
function Matricula:getAluno()
		return self.aluno
end
function Matricula:getPeriodo()
		return self.periodo
end


--[[
NUMERO, ALUNO, PERIODO
Associada à matrícula existe uma relação das disciplinas matriculadas
que são selecionadas a partir da grade curricular do curso do aluno. O valor total
da matrícula é igual à soma do valor de cada disciplina matriculada.
]]
