-- Meta class
local classes = require "classes"
local Aluno = classes.class()

-- Derived class method new
function Aluno:init (ra, nome, email, curso)
   self.ra = ra
   self.nome = nome
   self.email = email
   self.curso = curso
end

function Aluno:set_ra(ra)
	self.ra = ra
end

function Aluno:get_ra()
	return self.ra
end

function Aluno:set_nome(nome)
	self.nome = nome
end

function Aluno:get_nome()
	return self.nome
end

function Aluno:set_email(email)
	self.email = email
end

function Aluno:get_email()
	return self.email
end

function Aluno:set_curso(curso)
	self.curso = curso
end

function Aluno:get_curso()
	return self.curso
end

return Aluno
