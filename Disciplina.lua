-- Meta class
Disciplina = {codigo = 0, nome = "", carga_horaria = 0, valor = 0}

-- Derived class method new
function Disciplina:new (codigo, nome, carga_horaria, valor)
   local acnt = {}
   setmetatable(acnt, self)
   self.__index = self
   self.codigo = codigo or 0
   self.nome = nome or ""
   self.carga_horaria = carga_horaria or 0
   self.valor = valor or 0
   return acnt
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
