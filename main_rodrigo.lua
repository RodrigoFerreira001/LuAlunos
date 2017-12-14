local classes = require "classes"
local Aluno = require "Aluno"
local Curso = require "Curso"
local Disciplina = require "Disciplina"

disciplinas = {}
disciplina_index = 1

option = 0
while(true) do
	os.execute("clear")
	print("Escolha operação:")
	print("1 - Inserir.")
	print("2 - Alterar.")
	print("3 - Remover.")
	print("4 - Sair.")

	option = io.read()
	option = tonumber(option)

	if(option == 1) then
		while(true) do
			os.execute("clear")
			print("Escolha alvo da operação de Inserção.")
			print("1 - Disciplina.")
			print("2 - Aluno.")
			print("3 - Curso.")
			print("4 - Matricula.")
			print("5 - Voltar.")

			option = io.read()
			option = tonumber(option)

			if(option == 1) then
				os.execute("clear")
				print("Entre com os dados da disciplina")
				print("Código:")
				local codigo = io.read()

				print("Nome:")
				local nome = io.read()

				print("Carga Horária:")
				local carga_horaria = io.read()

				print("Valor:")
				local valor = io.read()

				local disciplina = Disciplina.new(codigo, nome, carga_horaria, valor)

				table.insert(disciplinas, disciplina)

				print("Disciplina "..nome.." inserida com sucesso!")
				io.read()

			elseif(option == 2) then
			elseif(option == 3) then
			elseif(option == 4) then
			elseif(option == 5) then
				break
			else
				print("Opção inválida")
			end
		end
	elseif(option == 2) then
		while(true) do
			os.execute("clear")
			print("Escolha alvo da operação de Edição.")
			print("1 - Disciplina.")
			print("2 - Aluno.")
			print("3 - Curso.")
			print("4 - Matricula.")
			print("5 - Voltar.")

			option = io.read()
			option = tonumber(option)

			if(option == 1) then
				print("Qual disciplina você deseja alterar? (-1 para cancelar)")
				for i, element in pairs(disciplinas) do
					print(i, element:get_nome())
				end

				local id = tonumber(io.read())
				if(id == -1) then
					break
				end

				print("Entre com os dados da disciplina")
				print("Código:")
				local codigo = io.read()

				print("Nome:")
				local nome = io.read()

				print("Carga Horária:")
				local carga_horaria = io.read()

				print("Valor:")
				local valor = io.read()

				disciplinas[id]:set_codigo(codigo)
				disciplinas[id]:set_nome(nome)
				disciplinas[id]:set_carga_horaria(carga_horaria)
				disciplinas[id]:set_valor(valor)

				print("Disciplina "..nome.." alterada com sucesso!")
				io.read()


			elseif(option == 2) then
			elseif(option == 3) then
			elseif(option == 4) then
			elseif(option == 5) then
				break
			else
				print("Opção inválida")
			end
		end
	elseif(option == 3) then
		while(true) do
			os.execute("clear")
			print("Escolha alvo da operação de Remoção.")
			print("1 - Disciplina.")
			print("2 - Aluno.")
			print("3 - Curso.")
			print("4 - Matricula.")
			print("5 - Voltar.")

			option = io.read()
			option = tonumber(option)

			if(option == 1) then
			elseif(option == 2) then
			elseif(option == 3) then
			elseif(option == 4) then
			elseif(option == 5) then
				break
			else
				print("Opção inválida")
			end
		end
	elseif(option == 4) then
		break
	else
		print("Opção inválida")
	end
end
