-- Meta class
Curso = {codigo = 0, nome = "", duracao = 0 ,grade = {}}

-- Derived class method new
function Curso:new (codigo,nome,duracao,grade)
   local course = {}
   setmetatable(course, self)
   self.__index = self
   self.codigo = codigo or 0
   self.nome = nome or "none"
   self.duracao = duracao or 0;
   self.grade = grade or {}
   return course
end

function Curso:printCurso()
  print(self.codigo)
  print(self.nome)
  print(self.duracao)
  print(self.grade)
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
