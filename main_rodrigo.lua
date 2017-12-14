local classes = require "classes"
local Aluno = require "Aluno"
local Curso = require "Curso"
local Disciplina = require "Disciplina"

disciplinas = {}
alunos = {}


option = 0
while(true) do
	os.execute("clear")
	print("Escolha operação:")
	print("1 - Inserir.")
	print("2 - Alterar.")
	print("3 - Remover.")
	print("4 - Listar.")
	print("5 - Sair.")

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
				os.execute("clear")
				print("Entre com os dados do aluno")
				print("RA:")
				local ra = io.read()

				print("Nome:")
				local nome = io.read()

				print("Email:")
				local email = io.read()

				print("Curso:")
				local curso = io.read()

				local aluno = Aluno.new(ra, nome, email, curso)

				table.insert(alunos, aluno)

				print("Aluno "..nome.." inserido com sucesso!")
				io.read()

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
				if(#disciplinas == 0) then
					print("Não há disciplinas cadastradas!")
					io.read()
				else
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
				end

			elseif(option == 2) then
				if(#alunos == 0) then
					print("Não há alunos cadastrados!")
					io.read()
				else
					print("Qual aluno você deseja alterar? (-1 para cancelar)")
					for i, element in pairs(alunos) do
						print(i, element:get_nome())
					end

					local id = tonumber(io.read())
					if(id == -1) then
						break
					end

					print("Entre com os dados do aluno")
					print("RA:")
					local ra = io.read()

					print("Nome:")
					local nome = io.read()

					print("Email:")
					local email = io.read()

					print("Curso:")
					local curso = io.read()


					alunos[id]:set_ra(ra)
					alunos[id]:set_nome(nome)
					alunos[id]:set_email(email)
					alunos[id]:set_curso(curso)

					print("Aluno "..nome.." alterado com sucesso!")
					io.read()
				end

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
				if(#disciplinas == 0) then
					print("Não há disciplinas cadastradas!")
					io.read()
				else
					local nome
					print("Qual disciplina você deseja remover? (-1 para cancelar)")
					for i, element in pairs(disciplinas) do
						print(i, element:get_nome())
					end

					local id = tonumber(io.read())
					if(id == -1) then
						break
					end

					nome = disciplinas[id]:get_nome()
					table.remove(disciplinas, id)

					print("Disciplina "..nome.." removida com sucesso!")
					io.read()
				end

			elseif(option == 2) then
				if(#alunos == 0) then
					print("Não há alunos cadastrados!")
					io.read()
				else
					local nome
					print("Qual aluno você deseja remover? (-1 para cancelar)")
					for i, element in pairs(alunos) do
						print(i, element:get_nome())
					end

					local id = tonumber(io.read())
					if(id == -1) then
						break
					end

					nome = alunos[id]:get_nome()
					table.remove(alunos, id)

					print("Aluno "..nome.." removido com sucesso!")
					io.read()
				end

			elseif(option == 3) then
			elseif(option == 4) then
			elseif(option == 5) then
				break
			else
				print("Opção inválida")
			end
		end
	elseif(option == 4) then
		while(true) do
			os.execute("clear")
			print("Escolha alvo da operação de Listagem.")
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
	elseif(option == 5) then
		break
	else
		print("Opção inválida")
	end
end
