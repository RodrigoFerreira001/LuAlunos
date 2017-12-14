local Aluno = require "Aluno"
local classes = require "classes"

novo_aluno = Aluno.new(10, "Rodrigo Ferreira", "rodrigoferreira001@hotmail.com", 5)
novo_aluno2 = Aluno.new(15, "Savyo", "doido@gmail.com", 13)
-- a = {novo_aluno,novo_aluno2}
a = {}
table.insert(a,novo_aluno)
table.insert(a,novo_aluno2)
for i,aluno in ipairs(a) do
	print(aluno:get_nome())
	print(aluno:get_ra())
	print(aluno:get_email())
	print(aluno:get_curso())
end
-- print(novo_aluno.nome)
