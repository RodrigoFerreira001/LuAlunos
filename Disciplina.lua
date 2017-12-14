local classes = require "classes"

-- Meta class
local Disciplina = classes.class()

-- Derived class method new
function Disciplina:init (codigo, nome, carga_horaria, valor)
   self.codigo = codigo
   self.nome = nome
   self.carga_horaria = carga_horaria
   self.valor = valor
end

function Disciplina:set_codigo(codigo)
	self.codigo = codigo
end

function Disciplina:get_codigo()
	return self.codigo
end

function Disciplina:set_nome(nome)
	self.nome = nome
end

function Disciplina:get_nome()
	return self.nome
end

function Disciplina:set_carga_horaria(carga_horaria)
	self.carga_horaria = carga_horaria
end

function Disciplina:get_carga_horaria()
	return self.carga_horaria
end

function Disciplina:set_valor(valor)
	self.valor = valor
end

function Disciplina:get_valor(valor)
	return self.valor
end

return Disciplina
