local classes = require "classes"
local Disciplina = require "Disciplina"

-- Meta class
local Curso = classes.class()

-- Derived class method new
function Curso:new (codigo,nome,duracao)
   self.codigo = codigo
   self.nome = nome
   self.duracao = duracao
   self.grade = {}
end

function Curso:add_disciplina(disciplina)
	table.insert(self.grade, disciplina)
end

function Curso:set_codigo(codigo)
	return self.codigo
end

function Curso:get_codigo(codigo)
	self.codigo = codigo
end

function Curso:set_nome(nome)
	self.nome = nome
end

function Curso:get_nome()
	return self.nome
end

function Curso:set_duracao(duracao)
	self.duracao = duracao
end

function Curso:get_duracao()
	return self.duracao
end

function Curso:set_grade(grade)
	self.grade = grade
end

function Curso:get_grade()
	return self.grade
end

return Curso
