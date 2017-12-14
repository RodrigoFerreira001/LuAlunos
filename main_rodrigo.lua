local classes = require "classes"
local Aluno = require "Aluno"
local Curso = require "Curso"
local Disciplina = require "Disciplina"

disciplinas = {}
alunos = {}
cursos = {}
matriculas = {}

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
				if(#cursos == 0) then
					print("Não é possivel cadastrar aluno, pois não há cursos cadastrados!")
					io.read()
				else
					print("Entre com os dados do aluno")
					print("RA:")
					local ra = io.read()

					print("Nome:")
					local nome = io.read()

					print("Email:")
					local email = io.read()
					local id

					while(true) do
						print("Selecione o curso do aluno:")
						for i, element in pairs(cursos) do
							print(i, element:get_nome())
						end
						id = tonumber(io.read())
						if (cursos[id] == nil) then
							print("Selecione um curso válido!")
						else
							break
						end
					end


					local aluno = Aluno.new(ra, nome, email, cursos[id])

					table.insert(alunos, aluno)

					print("Aluno "..nome.." inserido com sucesso!")
					io.read()
				end
			elseif(option == 3) then
				os.execute("clear")
				print("Entre com os dados do curso")
				print("Código:")
				local codigo = io.read()

				print("Nome:")
				local nome = io.read()

				print("Duração:")
				local duracao = io.read()

				local curso = Curso.new(codigo, nome, duracao)

				table.insert(cursos, curso)

				print("Curso "..nome.." inserido com sucesso!")
				io.read()

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
					local id_new


					while(true) do
						print("Selecione o curso do aluno:")
						for i, element in pairs(cursos) do
							print(i, element:get_nome())
						end
						id_new = tonumber(io.read())
						if (cursos[id_new] == nil) then
							print("Selecione um curso válido!")
						else
							break
						end
					end

					alunos[id]:set_ra(ra)
					alunos[id]:set_nome(nome)
					alunos[id]:set_email(email)
					alunos[id]:set_curso(cursos[id_new])

					print("Aluno "..nome.." alterado com sucesso!")
					io.read()
				end

			elseif(option == 3) then
				if(#cursos == 0) then
					print("Não há cursos cadastrados")
					io.read()
				else
					while(true) do
						os.execute("clear")
						print("O que deseja fazer?")
						print("1 - Alterar dados do curso")
						print("2 - Vincular nova disciplina à grade do curso")
						print("3 - Desvincular disciplina da grade do curso")
						print("4 - Voltar")

						option = tonumber(io.read())

						if(option == 1) then
							os.execute("clear")

							print("Qual curso você deseja alterar? (-1 para cancelar)")
							for i, element in pairs(cursos) do
								print(i, element:get_nome())
							end

							local id = tonumber(io.read())
							if(id == -1) then
								break
							end

							print("Entre com os dados do curso")
							print("Código:")
							local codigo = io.read()

							print("Nome:")
							local nome = io.read()

							print("Duração:")
							local duracao = io.read()

							cursos[id]:set_nome(nome)
							cursos[id]:set_codigo(codigo)
							cursos[id]:set_duracao(duracao)

							print("Curso "..nome.." alterado com sucesso!")
							io.read()
						elseif(option == 2) then
							if(#disciplinas == 0) then
								print("Não há disciplinas cadastradas!")
								io.read()
							else
								print("Qual curso você deseja alterar? (-1 para cancelar)")
								for i, element in pairs(cursos) do
									print(i, element:get_nome())
								end

								local id = tonumber(io.read())
								if(id == -1) then
									break
								end

								print("Qual disciplina você deseja vincular?")

								local nome
								local has_disciplina = false
								for i, element in pairs(disciplinas) do
									print(i, element:get_nome())
								end

								option = tonumber(io.read())

								nome = disciplinas[option]:get_nome()

								for i, element in pairs(cursos[id]:get_grade()) do
									if (element:get_nome() == nome) then
										print ("Não é possivel vincular uma disciplina já vinculada anteriormente!")
										io.read()
										has_disciplina = true
									end
								end

								if(has_disciplina == true) then
									break
								end

								table.insert(cursos[id]:get_grade(), disciplinas[option])

								print("Disciplina "..nome.." foi vinculada com sucesso!")
							end
						elseif(option == 3) then
							if(#disciplinas == 0) then
								print("Não há disciplinas cadastradas!")
								io.read()
							else
								print("Qual curso você deseja alterar? (-1 para cancelar)")
								for i, element in pairs(cursos) do
									print(i, element:get_nome())
								end

								local id = tonumber(io.read())
								if(id == -1) then
									break
								end
								if (#cursos[id]:get_grade() == 0) then
									print("Não existem disciplinas vinculadas neste curso!")
									io.read()
									break
								end
								print("Qual disciplina você deseja desvincular?")

								for i, element in pairs(cursos[id]:get_grade()) do
									print(i, element:get_nome())
								end

								option = tonumber(io.read())

								table.remove(cursos[id]:get_grade(), option)

							end

						elseif(option == 4) then
							break
						else
							print("Opção inválida")
							io.read()
						end
					end
				end
			elseif(option == 4) then
			elseif(option == 5) then
				break
			else
				print("Opção inválida")
				io.read()
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
				if(#cursos == 0) then
					print("Não há cursos cadastrados!")
					io.read()
				else
					local nome
					print("Qual curso você deseja remover? (-1 para cancelar)")
					for i, element in pairs(cursos) do
						print(i, element:get_nome())
					end

					local id = tonumber(io.read())
					if(id == -1) then
						break
					end

					nome = cursos[id]:get_nome()
					table.remove(cursos, id)

					print("Curso "..nome.." removido com sucesso!")
					io.read()
				end
			elseif(option == 4) then
			elseif(option == 5) then
				break
			else
				print("Opção inválida")
				io.read()
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
				if(#disciplinas == 0) then
					print("Não há disciplinas cadastradas!")
					io.read()
				else
					for i, element in pairs(disciplinas) do
						print("Nome: "..element:get_nome().."\nCódigo: "..element:get_codigo().."\nCarga Horária: "..element:get_carga_horaria().."\nValor: "..element:get_valor().."\n")
					end
					io.read()
				end

			elseif(option == 2) then
				if(#alunos == 0) then
					print("Não há alunos cadastrados!")
					io.read()
				else
					for i, element in pairs(alunos) do
						print("Nome: "..element:get_nome().."\nRA: "..element:get_ra().."\nEmail: "..element:get_email().."\nCurso: "..element:get_curso():get_nome().."\n")
					end
					io.read()
				end

			elseif(option == 3) then
				if(#cursos == 0) then
					print("Não há cursos cadastrados!")
					io.read()
				else
					for i, element in pairs(cursos) do
						--
						print("Nome: "..element:get_nome().."\nCódigo: "..element:get_codigo().."\nDuração: "..element:get_duracao().."\n")
						for j, elementj in pairs(cursos[i]:get_grade()) do
							print("Disciplina: "..elementj:get_nome().."\n")
						--
						end
					end
					io.read()
				end
			elseif(option == 4) then
			elseif(option == 5) then
				break
			else
				print("Opção inválida")
				io.read()
			end
		end
	elseif(option == 5) then
		break
	else
		print("Opção inválida")
		io.read()
	end
end
