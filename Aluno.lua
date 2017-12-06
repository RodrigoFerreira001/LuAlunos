-- Meta class
Aluno = {ra = 0, nome = "", email = "", curso = 0}

-- Derived class method new
function Aluno:new (ra, nome, email, curso)
   local acnt = {}
   setmetatable(acnt, self)
   self.__index = self
   self.ra = ra or 0
   self.nome = nome or ""
   self.email = email or ""
   self.curso = curso or 0
   return acnt
end

function Aluno:set_ra(ra)
	self.ra = ra
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

function Aluno:set_curso(curso)
	self.curso = curso
end
